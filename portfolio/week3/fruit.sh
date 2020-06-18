#!/bin/bash
fruits=("Apple" "Mango" "Strawberry" "Orange" "Banana")
len=${#fruits[*]} 
for ((i-0; i<${len}; i++));
do 
echo "FRUIT : ${fruits[$i]}"
done