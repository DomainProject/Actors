from pyspark.sql.functions import window, col, collect_list, first
from pyspark.sql import SparkSession
from pyspark.sql.types import StructType, StructField, StringType, IntegerType, FloatType, TimestampType
import time

schema = StructType([
    StructField("VendorID", IntegerType(), True),
    StructField("tpep_pickup_datetime", TimestampType(), True),
    StructField("tpep_dropoff_datetime", TimestampType(), True),
    StructField("passenger_count", FloatType(), True),
    StructField("trip_distance", FloatType(), True),
    StructField("RatecodeID", FloatType(), True),
    StructField("store_and_fwd_flag", StringType(), True),
    StructField("PULocationID", IntegerType(), True),
    StructField("DOLocationID", IntegerType(), True),
    StructField("payment_type", IntegerType(), True),
    StructField("fare_amount", FloatType(), True),
    StructField("extra", FloatType(), True),
    StructField("mta_tax", FloatType(), True),
    StructField("tip_amount", FloatType(), True),
    StructField("tolls_amount", FloatType(), True),
    StructField("improvement_surcharge", FloatType(), True),
    StructField("total_amount", FloatType(), True),
    StructField("congestion_surcharge", FloatType(), True),
    StructField("Airport_fee", FloatType(), True)
])

"""
SELECT PULocationID, SUM(passenger_count) 
FROM Taxis 
GROUP BY PULocationID 
ORDER BY passenger_count 
WINDOW ( TUMBLING , 24 hours ) 
"""
def query1(df):
    windowed_df = df.withWatermark("tpep_pickup_datetime", "24 hours").groupBy(
        window("tpep_pickup_datetime", "24 hours"), "PULocationID"
    ).sum("passenger_count")

    sorted_df = windowed_df.orderBy(
        col("sum(passenger_count)").desc()
    )

    return sorted_df.select("window.start", "window.end", "PULocationID", "sum(passenger_count)")

"""
CREATE VIEW AiportRides AS 
SELECT * 
FROM Taxis 
WHERE Airport_fee != 0.0 
WINDOW ( TUMBLING , 1 dayS ) 
"""
def query2(df):
    windowed_df = df \
        .withWatermark("tpep_pickup_datetime", "24 hours") \
        .select("*", window(col("tpep_pickup_datetime"), "24 hours").alias("window"))

    return windowed_df.filter(col("Airport_fee") != 0.0)

"""
SELECT payment_type, AVG(total_amount) 
FROM AiportRides 
GROUP BY payment_type 
"""
def query3(airport_rides):
    return airport_rides.groupBy(
        "payment_type", "window"
    ).avg("total_amount")

"""
CREATE VIEW MadisonSquareGardenRides AS 
SELECT * 
FROM Taxis 
WHERE ( PULocationID == 161 ) OR ( DOLocationID == 161 ) 
<no groupBy> 
<no orderBy> 
WINDOW ( TUMBLING , 24 hours ) 
"""
def query4(df):
    windowed_df = df \
        .withWatermark("tpep_pickup_datetime", "24 hours") \
        .select("*", window(col("tpep_pickup_datetime"), "24 hours").alias("window"))
    
    return windowed_df.filter("PULocationID == 161 or DOLocationID == 161")

"""
SELECT PULocationID, AVG(congestion_surcharge) 
FROM MadisonSquareGardenRides 
GROUP BY PULocationID 
ORDER BY congestion_surcharge 
"""
def query5(msg_rides):
    return msg_rides.groupBy(
        "PULocationID"
    ).sum("congestion_surcharge").orderBy("sum(congestion_surcharge)")

"""
SELECT PULocationID, SUM(trip_distance) 
FROM Taxis 
GROUP BY PULocationID 
ORDER BY trip_distance 
WINDOW ( TUMBLING , 24 hours ) 
"""
def query6(df):
    windowed_df = df.withWatermark("tpep_pickup_datetime", "24 hours").groupBy(
        window("tpep_pickup_datetime", "24 hours"), "PULocationID"
    ).sum("trip_distance")
    sorted_df = windowed_df.orderBy("sum(trip_distance)")

    return sorted_df

"""
CREATE VIEW HighTipsRides AS 
SELECT * 
FROM Taxis 
WHERE tip_amount > 10.0 
WINDOW ( TUMBLING , 24 hours ) 
"""
def query7(df):
    windowed_df = df \
        .withWatermark("tpep_pickup_datetime", "24 hours") \
        .select("*", window(col("tpep_pickup_datetime"), "24 hours").alias("window"))
    
    return windowed_df.filter("tip_amount > 10.0")

"""
SELECT PULocationID, DOLocationID 
FROM HighTipsRides 
"""
def query8(high_tips_rides):
    return high_tips_rides.select("window", "PULocationID", "DOLocationID")

"""
CREATE VIEW GroupRides AS 
SELECT * 
FROM Taxis 
WHERE passenger_count > 4 
WINDOW ( TUMBLING , 24 hours ) 
"""
def query9(df):
    windowed_df = df \
        .withWatermark("tpep_pickup_datetime", "24 hours") \
        .select("*", window(col("tpep_pickup_datetime"), "24 hours").alias("window"))
    
    return windowed_df.filter("passenger_count > 4")

"""
SELECT * 
FROM Taxis 
WHERE ( payment_type == 1 ) AND ( total_amount > 100.0 ) 
WINDOW ( TUMBLING , 24 hours ) 
"""
def query10(df):
    windowed_df = df \
        .withWatermark("tpep_pickup_datetime", "24 hours") \
        .select("*", window(col("tpep_pickup_datetime"), "24 hours").alias("window"))
    
    return windowed_df.filter("payment_type == 1 and total_amount > 100.0")


if __name__ == "__main__":

    spark = SparkSession \
        .builder \
        .config("spark.executor.memory", "16g") \
        .config("spark.executor.instances", "1") \
        .config("spark.sql.shuffle.partitions", "16") \
        .config("spark.eventLog.enabled", True) \
        .master("local[4]") \
        .appName("SQL Queries - 4 Threads") \
        .getOrCreate()


    df = spark \
        .readStream \
        .schema(schema) \
        .format("csv") \
        .option("header", True) \
        .load("data")

    query1_result = query1(df)
    query1_query = query1_result.writeStream \
        .outputMode("complete") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query2_result = query2(df)
    query2_query = query2_result.writeStream \
        .outputMode("append") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query3_result = query3(query2_result)
    query3_query = query3_result.writeStream \
        .outputMode("complete") \
        .format("console") \
        .trigger(once=True) \
        .start()
    
    query4_result = query4(df)
    query4_query = query4_result.writeStream \
        .outputMode("append") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query5_result = query5(query4_result)
    query5_query = query5_result.writeStream \
        .outputMode("complete") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query6_result = query6(df)
    query6_query = query6_result.writeStream \
        .outputMode("complete") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query7_result = query7(df)
    query7_query = query7_result.writeStream \
        .outputMode("append") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query8_result = query8(query7_result)
    query8_query = query8_result.writeStream \
        .outputMode("append") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query9_result = query9(df)
    query9_query = query9_result.writeStream \
        .outputMode("append") \
        .format("console") \
        .trigger(once=True) \
        .start()

    query10_result = query10(df)
    query10_query = query10_result.writeStream \
        .outputMode("append") \
        .format("console") \
        .trigger(once=True) \
        .start()
    
    query1_query.awaitTermination()
    query2_query.awaitTermination()
    query3_query.awaitTermination()
    query4_query.awaitTermination()
    query5_query.awaitTermination()
    query6_query.awaitTermination()
    query7_query.awaitTermination()
    query8_query.awaitTermination()
    query9_query.awaitTermination()
    query10_query.awaitTermination()

    spark.stop()

