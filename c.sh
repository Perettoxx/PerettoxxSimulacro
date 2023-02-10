#!/bin/bash

# Primero guardamos las notas en notas
notas=$(tail -n +2 notas.txt | awk '{print $3}')

# Luego guardamos cuantos aprobados y suspensos hay dentro de notas
aprobados=$(echo "$notas" | awk '$1 > 4 {count++} END {print count}')
suspensos=$(echo "$notas" | awk '$1 <= 4 {count++} END {print count}')

# Mostramos el resultado
echo "Hay $aprobados aprobados y $suspensos suspensos."
