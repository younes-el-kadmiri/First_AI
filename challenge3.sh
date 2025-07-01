#!/bin/bash

ls -ld user_backup
chmod 700 user_backup/rapport
chmod 644 user_backup/rapport/synthese.txt
sudo adduser collaborateur
sudo addgroup equipe-projet
sudo usermod -aG equipe-projet collaborateur
sudo chown -R collaborateur:user_backup user_backup/important
groups
