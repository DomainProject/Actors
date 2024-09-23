import csv
from datetime import datetime

def read_and_sort_csv(file_path):
    rows = []

    # Leggi le righe dal file CSV
    with open(file_path, mode='r', newline='', encoding='utf-8') as csvfile:
        csvreader = csv.DictReader(csvfile)
        fieldnames = csvreader.fieldnames  # Memorizza i nomi delle colonne

        # Salva solo le righe con 'tpep_pickup_datetime' dell'anno 2024
        for row in csvreader:
            try:
                # Analizza la data e controlla l'anno
                pickup_datetime = datetime.strptime(row['tpep_pickup_datetime'], '%Y-%m-%d %H:%M:%S')
                if pickup_datetime.year == 2024:
                    rows.append(row)
            except ValueError:
                # Gestisci righe con formato di data errato o valore mancante
                print(f"Formato data non valido per la riga: {row}")

    # Ordina le righe in base alla colonna 'tpep_pickup_datetime'
    rows.sort(key=lambda x: datetime.strptime(x['tpep_pickup_datetime'], '%Y-%m-%d %H:%M:%S'))

    # Sovrascrivi il file CSV con le righe ordinate
    with open(file_path, mode='w', newline='', encoding='utf-8') as csvfile:
        csvwriter = csv.DictWriter(csvfile, fieldnames=fieldnames)
        csvwriter.writeheader()  # Scrivi l'intestazione del CSV
        csvwriter.writerows(rows)  # Scrivi le righe ordinate

# Esegui la funzione con il percorso del tuo file CSV
read_and_sort_csv('taxi_1000.csv')
