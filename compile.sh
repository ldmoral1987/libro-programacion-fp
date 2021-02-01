#!/bin/bash
# Script de compilación del documento
# Ejecutar con permisos de ejecución (u+x) como ./compile.sh

# Se genera el documento principal
pdflatex main

# Se genera el índice de contenidos (con el estilo)
makeindex main.idx -s StyleInd.ist

# Se compila la bibliografía
biber main

# Generación del pdf final (hay que ejecutarlo 2 veces para incluir índices
# y bibliografía en el documento y para que los números de página sean correctos
pdflatex main
pdflatex main
