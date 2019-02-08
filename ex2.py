#!/usr/bin/env python

import sys

# Pour lire les lignes depuis la sortie standard, il faut les lire comme
# dans un fichier ouvert

for line in sys.stdin:
    print(line.strip().split(','))
