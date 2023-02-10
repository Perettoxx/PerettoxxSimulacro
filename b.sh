#!/bin/bash

# Primero guardamos las notas en notas
notas=$(tail -n +2 notas.txt | awk '{print $3}')

# Luego guardamos cuantas matrículas hay dentro de notas
contador_matriculas=$(echo "$notas" | awk '$1 >= 9 {count++} END {print count}')

# Mostramos el resultado
echo "Hay $contador_matriculas matrículas de honor."