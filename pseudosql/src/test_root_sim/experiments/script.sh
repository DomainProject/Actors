#!/bin/bash

# Verifica che sia stato passato un parametro
if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <valore_x>"
  exit 1
fi

x_value=$1
iterations=10

# Inizializza le variabili per le somme
total_sim_time_sum=0
avg_memory_usage_sum=0
peak_memory_usage_sum=0

# Nome del file CSV per salvare i risultati intermedi
output_file="stats_${x_value}.csv"
echo "Esecuzione,Total Simulation Time (s),Average Memory Usage (MiB),Peak Memory Usage (MiB)" > "$output_file"

# Esegui ./../../build/src/test_root_sim/test con x_value
for i in $(seq 1 $iterations)
do
  echo "Esecuzione $i di $iterations"
  
  # Usa il parametro passato per sostituire x nella stringa
  ./../../build/src/test_root_sim/test $x_value
  
  # Esegui il comando Python per generare il file stats.txt
  python3 rootsim_stats.py stats.bin
  
  # Verifica che il file stats.txt esista
  if [ ! -f stats.txt ]; then
    echo "Errore: il file stats.txt non è stato generato."
    exit 1
  fi

  # Estrai le metriche dal file stats.txt
  total_sim_time=$(grep "TOTAL SIMULATION TIME" stats.txt | awk -F': ' '{print $2}' | sed 's/s//g')
  avg_memory_usage=$(grep "AVERAGE MEMORY USAGE" stats.txt | awk -F': ' '{print $2}' | sed 's/MiB//g;s/GiB//g')
  avg_memory_unit=$(grep "AVERAGE MEMORY USAGE" stats.txt | awk -F': ' '{print $2}' | sed 's/[0-9.]//g')
  peak_memory_usage=$(grep "PEAK MEMORY USAGE" stats.txt | awk -F': ' '{print $2}' | sed 's/MiB//g;s/GiB//g')
  peak_memory_unit=$(grep "PEAK MEMORY USAGE" stats.txt | awk -F': ' '{print $2}' | sed 's/[0-9.]//g')

  # Verifica se l'unità di misura è in GiB e converte in MiB se necessario
  if [ "$avg_memory_unit" == "GiB" ]; then
    avg_memory_usage=$(awk "BEGIN {print $avg_memory_usage * 1024}")  # Conversione da GiB a MiB
  fi
  
  if [ "$peak_memory_unit" == "GiB" ]; then
    peak_memory_usage=$(awk "BEGIN {print $peak_memory_usage * 1024}")  # Conversione da GiB a MiB
  fi

  # Somma i valori estratti
  total_sim_time_sum=$(awk -v t1="$total_sim_time_sum" -v t2="$total_sim_time" 'BEGIN {print t1 + t2}')
  avg_memory_usage_sum=$(awk -v t1="$avg_memory_usage_sum" -v t2="$avg_memory_usage" 'BEGIN {print t1 + t2}')
  peak_memory_usage_sum=$(awk -v t1="$peak_memory_usage_sum" -v t2="$peak_memory_usage" 'BEGIN {print t1 + t2}')

  # Stampa i valori correnti
  echo "TOTAL SIMULATION TIME: $total_sim_time s"
  echo "AVERAGE MEMORY USAGE: $avg_memory_usage MiB"
  echo "PEAK MEMORY USAGE: $peak_memory_usage MiB"
  
  # Salva i risultati dell'esecuzione nel file CSV
  echo "$i,$total_sim_time,$avg_memory_usage,$peak_memory_usage" >> "$output_file"
  
  echo "---------------------------------------"
done

# Calcola le medie aritmetiche
total_sim_time_avg=$(awk -v sum="$total_sim_time_sum" -v it="$iterations" 'BEGIN {print sum / it}')
avg_memory_usage_avg=$(awk -v sum="$avg_memory_usage_sum" -v it="$iterations" 'BEGIN {print sum / it}')
peak_memory_usage_avg=$(awk -v sum="$peak_memory_usage_sum" -v it="$iterations" 'BEGIN {print sum / it}')

# Stampa le medie finali
echo "---------------------------------------"
echo "Medie dopo $iterations esecuzioni:"
echo "MEDIA TOTAL SIMULATION TIME: $total_sim_time_avg secondi"
echo "MEDIA AVERAGE MEMORY USAGE: $avg_memory_usage_avg MiB"
echo "MEDIA PEAK MEMORY USAGE: $peak_memory_usage_avg MiB"
echo "---------------------------------------"

