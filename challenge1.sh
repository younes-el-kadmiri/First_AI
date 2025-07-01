#!/bin/bash

mkdir -p projet/docs
mkdir -p projet/src
mkdir -p projet/data

echo "Ceci est le README" > projet/docs/README.txt
echo "Script principal" > projet/src/main.sh
echo "Données d'entrée" > projet/data/input.txt

mv projet/data/input.txt projet/docs/
mv projet/src projet/scripts
rm -r projet/data

tree projet

