import csv
from datetime import datetime

def analyze_csv(file_path):
    max_count = 0
    current_count = 1
    last_pickup_time = None

    with open(file_path, mode='r') as file:
        reader = csv.DictReader(file)

        for row in reader:
            # Convert the string into a datetime object for comparison
            pickup_time = row['tpep_pickup_datetime']

            if last_pickup_time is None:
                last_pickup_time = pickup_time
                continue

            # Check if the current pickup time matches the last one
            if pickup_time == last_pickup_time:
                current_count += 1
            else:
                # Update max count if current count is higher
                if current_count > max_count:
                    max_count = current_count

                # Reset for the new pickup time
                current_count = 1

            last_pickup_time = pickup_time

        # Final check for the last group of equal pickup times
        if current_count > max_count:
            max_count = current_count

    return max_count

# Example usage
file_path = 'taxi.csv'  # Replace with the path to your CSV file
max_consecutive = analyze_csv(file_path)
print(f"The maximum number of consecutive tuples with the same tpep_pickup_datetime is: {max_consecutive}")
