#!/bin/bash
pids=()

for ((x=0; x<=4; x++)); do
    ./figlio.sh &  # Simula un processo figlio
    pids+=($!)
    echo "Avviato figlio con PID ${pids[-1]}"

done

for pid in ${pids[@]}; do
    echo "Wait for $pid"
    wait $pid
    echo "$pid killed"
done