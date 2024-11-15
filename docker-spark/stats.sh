#!/bin/bash

CONTAINER_NAME="spark-container"
count=0
max_memory=0  
total_memory=0  

start_time=$(date +%s.%N) 

output_file="stats.csv"

if [[ ! -f $output_file ]]; then
    touch $output_file  
    echo "execution_time_seconds,average_memory_mib,peak_memory_mib" > $output_file
fi

docker exec -d $CONTAINER_NAME spark-submit /opt/spark/work-dir/queries.py

curl --unix-socket /var/run/docker.sock "http://localhost/v1.47/containers/$CONTAINER_NAME/stats" | while read -r response; do
    
    if ! docker exec $CONTAINER_NAME ps aux | grep -q "[p]ython3 /opt/spark/work-dir/queries.py"; then
        end_time=$(date +%s.%N)  
        execution_time=$(echo "$end_time - $start_time" | bc)  

        execution_time=$(echo "scale=2; $execution_time" | bc)

        if (( count > 0 )); then
            average_memory=$(echo "scale=2; $total_memory / $count / 1048576" | bc)  
        else
            average_memory=0
        fi

        peak_memory_mib=$(echo "scale=2; $max_memory / 1048576" | bc) 

        echo "$execution_time,$average_memory,$peak_memory_mib" >> $output_file
        break
    fi

    usage=$(echo "$response" | jq '.memory_stats.usage // 0')
    cache=$(echo "$response" | jq '.memory_stats.stats.cache // 0')

    used_memory=$(echo "$usage - $cache" | bc)

    if (( $(echo "$used_memory > $max_memory" | bc -l) )); then
        max_memory=$used_memory
    fi

    total_memory=$((total_memory + used_memory))

    ((count+=1))

done
