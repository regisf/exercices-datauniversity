#!/usr/bin/env python

import sys
import os
import csv

# Pour lire les lignes depuis la sortie standard, il faut les lire comme
# dans un fichier ouvert

lines = [line for line in sys.stdin]
# Utiliser les fichiers mémoires

with open('my-data.csv', 'wt') as f:
    f.writelines(lines)

with open('my-data.csv', 'rt') as f:
    content = csv.reader(f)

    for line in content:
        print(line[9])

os.unlink('my-data.csv')

#print(lines)
#for line in sys.stdin:
#    print(line.strip().split(','))
