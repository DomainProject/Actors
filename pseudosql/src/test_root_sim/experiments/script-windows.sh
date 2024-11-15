#!/bin/bash

# Dimensioni delle finestre in secondi
window_sizes=(60 1800 3600 7200 10800 14400 18000 21600 25200 28800 32400 36000 39600 43200 46800 50400 54000 57600 61200 64800 68400 72000 75600 79200 82800 86400)

# File per le medie generali
output_file="stats_windows.csv"
rm -f $output_file

# Intestazione per il file delle medie
echo "Window Size (s), Avg Execution Time (s), Avg Average Memory (MiB), Avg Peak Memory (MiB)" >> $output_file

# Itera su ogni dimensione della finestra
for window_size in "${window_sizes[@]}"; do
    # Inizializza variabili per sommare i valori
    total_execution_time=0
    total_avg_memory=0
    total_peak_memory=0
    num_runs=10  # Numero di esecuzioni

    # File per i risultati specifici della finestra
    stats_file="stats_window_${window_size}.csv"
    rm -f $stats_file
    echo "Execution Time (s), Average Memory (MiB), Peak Memory (MiB)" >> $stats_file

    # Esegui il comando per il numero specificato di esecuzioni
    for i in $(seq 1 $num_runs); do
        echo "Esecuzione $i per window size $window_size"

        # Esegui il comando con la dimensione della finestra
        start_time=$(date +%s.%N)
        ./../../build/src/test_root_sim/test 4 "$window_size"
        end_time=$(date +%s.%N)

        # Calcola il tempo di esecuzione in secondi
        elapsed_time=$(echo "$end_time - $start_time" | bc)
        
        # Esegui il comando Python per generare il file stats.txt
        python3 rootsim_stats.py stats.bin

        # Verifica che il file stats.txt esista
        if [ ! -f stats.txt ]; then
            echo "Errore: il file stats.txt non è stato generato."
            exit 1
        fi

        # Estrai i valori da stats.txt
        total_sim_time=$(grep "TOTAL SIMULATION TIME" stats.txt | awk -F ': ' '{print $2}' | sed 's/s//')
        avg_memory=$(grep "AVERAGE MEMORY USAGE" stats.txt | awk -F ': ' '{print $2}' | sed 's/MiB//; s/GiB/*1024/' | bc)
        peak_memory=$(grep "PEAK MEMORY USAGE" stats.txt | awk -F ': ' '{print $2}' | sed 's/MiB//; s/GiB/*1024/' | bc)

        # Salva i risultati nel file specifico per la dimensione della finestra
        echo "$elapsed_time, $avg_memory, $peak_memory" >> $stats_file

        # Somma i valori
        total_execution_time=$(echo "scale=2; $total_execution_time + $elapsed_time" | bc)
        total_avg_memory=$(echo "scale=2; $total_avg_memory + $avg_memory" | bc)
        total_peak_memory=$(echo "scale=2; $total_peak_memory + $peak_memory" | bc)
    done

    # Calcola le medie
    average_execution_time=$(echo "scale=2; $total_execution_time / $num_runs" | bc)
    average_avg_memory=$(echo "scale=2; $total_avg_memory / $num_runs" | bc)
    average_peak_memory=$(echo "scale=2; $total_peak_memory / $num_runs" | bc)

    # Salva le medie nel file delle medie generali
    echo "$window_size, $average_execution_time, $average_avg_memory, $average_peak_memory" >> $output_file

    echo "---------------------------------------"
done

echo "Tutte le esecuzioni sono complete. I risultati sono stati salvati in $output_file."

