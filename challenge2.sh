#!/bin/bash

mkdir -p user_backup/{important,temporaire,rapport}

touch user_backup/todo.txt user_backup/note1.txt user_backup/brouillon.txt user_backup/test1.log user_backup/test2.log

mv user_backup/todo.txt user_backup/note1.txt user_backup/important/
mv user_backup/brouillon.txt user_backup/test*.log user_backup/temporaire/

cp user_backup/important/todo.txt user_backup/rapport/todo_backup.txt
cat user_backup/important/todo.txt user_backup/important/note1.txt > user_backup/rapport/synthese.txt

head user_backup/rapport/synthese.txt

rm user_backup/temporaire/*.log
rm -r user_backup/temporaire

echo "Chemin absolu : $(realpath user_backup)"
tree user_backup

zip -r user_backup/important_backup.zip user_backup/important
mkdir -p user_backup/restore
unzip user_backup/important_backup.zip -d user_backup/restore
