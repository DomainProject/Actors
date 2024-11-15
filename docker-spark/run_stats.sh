#!/bin/bash

total_execution_time=0
total_avg_memory=0
total_peak_memory=0
num_runs=10 

output_file="stats.csv"
rm $output_file

for i in {1..10}; do
    echo "Esecuzione $i di $num_runs"
    
    ./stats.sh
    
    last_line=$(tail -n 1 $output_file)
    
    execution_time=$(echo $last_line | cut -d',' -f1)
    avg_memory=$(echo $last_line | cut -d',' -f2)
    peak_memory=$(echo $last_line | cut -d',' -f3)
    
    total_execution_time=$(echo "scale=2; $total_execution_time + $execution_time" | bc)
    total_avg_memory=$(echo "scale=2; $total_avg_memory + $avg_memory" | bc)
    total_peak_memory=$(echo "scale=2; $total_peak_memory + $peak_memory" | bc)
done

average_execution_time=$(echo "scale=2; $total_execution_time / $num_runs" | bc)
average_avg_memory=$(echo "scale=2; $total_avg_memory / $num_runs" | bc)
average_peak_memory=$(echo "scale=2; $total_peak_memory / $num_runs" | bc)

# Stampa le medie finali
echo ""
echo "Final results after $num_runs runs:"
echo "Average execution time: $average_execution_time seconds"
echo "Average avg memory consumption: $average_avg_memory MiB"
echo "Average peak memory consumption: $average_peak_memory MiB"
