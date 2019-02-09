#!/usr/bin/env python

import sys
import os
import csv

# Pour lire les lignes depuis la sortie standard, il faut les lire comme
# dans un fichier ouvert

lines = [line for line in sys.stdin]

# TODO: Utiliser les fichiers mémoires
# Ouvre un fichier et écrit la liste du stdin
with open('my-data.csv', 'wt') as f:
    f.writelines(lines)

# lit le fichier et donne le à csv;read pour créer 
with open('my-data.csv', 'rt') as f:
    content = csv.reader(f)
    # Popule un set de comprehension pour supprimer les doublons
    setted = {line[9] for line in content}

    # Affiche les codes postaux
    for s in setted:
         print(s)

# Supprime le fichier de travail
os.unlink('my-data.csv')

