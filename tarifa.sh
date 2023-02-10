#!/bin/bash

# Pedir las llamadas
read -p "¿Cuantas llamadas va a realizar? " llamadas

# Costos de las tarifas
tarifa1=100
tarifa2=$((50 + llamadas * 1))
tarifa3=$((20 + llamadas * 2))

# Usar ifs para la lógica del programa (saber cual es la más barata / aconsejable)
if [ $tarifa1 -le $tarifa2 ] && [ $tarifa1 -le $tarifa3 ]; then
    echo "Te aconsejo la tarifa 1."
elif [ $tarifa2 -le $tarifa1 ] && [ $tarifa2 -le $tarifa3 ]; then
    echo "Te aconsejo la tarifa 2."
else
    echo "Te aconsejo la tarifa 3."
fi