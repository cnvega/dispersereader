#!/bin/bash

if [[ $# -ne 2 ]]; then 
	echo "Uso: ./sussing2survey_asciii inputfile outputfile"
	exit 
fi

echo "WARNING: Este script está incompleto! no usar para análisis finales"
echo "WARNING: Se utilizará la columna 4 (M200c) como my_field."

echo "# px py pz my_field" > $2

awk '$2 == 0 {print $6, $7, $8, $4}' $1 >> $2

echo "Done!"

