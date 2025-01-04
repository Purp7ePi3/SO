#!/bin/bash

mapfile -t righe < "inverti.txt"  # Legge tutte le righe in un array
for ((indice=${#righe[@]}-1; indice>=0; indice--)); do
    echo "${righe[indice]}"
done
