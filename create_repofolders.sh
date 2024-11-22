#!/bin/bash

# Create 7 folders and a README file in each folder
# 1: Journey
# 2: Real
# 3: Environment
# 4: UI
# 5: Formale
# 6: Symbols
# 7: Semblance

for i in {1..7}
do
    folder="folder_$i"
    mkdir "$folder"
    touch "$folder/README.md"
done
# Rename folders according to the given names
folder_names=("Journey" "Real" "Environment" "UI" "Formale" "Symbols" "Semblance")

for i in {1..7}
do
    mv "folder_$i" "${folder_names[$i-1]}"
done