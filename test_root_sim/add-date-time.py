import pandas as pd

# Carica il file CSV
df = pd.read_csv('taxi-1.csv')

# Assicurati che le colonne datetime siano nel formato corretto
df['tpep_pickup_datetime'] = pd.to_datetime(df['tpep_pickup_datetime'])
df['tpep_dropoff_datetime'] = pd.to_datetime(df['tpep_dropoff_datetime'])

# Estrai data e ora dalle colonne datetime
df['tpep_pickup_date'] = df['tpep_pickup_datetime'].dt.date
df['tpep_pickup_time'] = df['tpep_pickup_datetime'].dt.time
df['tpep_dropoff_date'] = df['tpep_dropoff_datetime'].dt.date
df['tpep_dropoff_time'] = df['tpep_dropoff_datetime'].dt.time

# Salva il DataFrame modificato in un nuovo file CSV con virgolette attorno ai valori
df.to_csv('taxi-1-updated.csv', index=False, quoting=1, quotechar='"')

print("File 'taxi-1-updated.csv' creato con successo.")
