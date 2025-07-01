#!/bin/bash

mkdir -p "mon_projet/documents"
mkdir -p "mon_projet/logs"
mkdir -p "mon_projet/sauvegardes"

for i in {1..50}; do
  echo $i >> mon_projet/logs/logdata.txt
done

echo "Contenu du fichier A" > mon_projet/documents/fichierA.txt
echo "Contenu du fichier B" > mon_projet/documents/fichierB.txt

date_du_jour=$(date +%F)
nb_documents=$(ls mon_projet/documents | wc -l)
nb_logs=$(ls mon_projet/logs | wc -l)

rapport="Date de génération : $date_du_jour
Fichiers dans documents : $nb_documents
Fichiers dans logs : $nb_logs"

echo "$rapport" > "mon_projet/rapport_$date_du_jour.txt"
