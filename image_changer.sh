#!/bin/env bash

echo "Inicia el Script Image Changer";

#Seleccionando el o los archivos a convertir 

echo "Seleccionando archivos";

archivos=$(zenity --file-selection --title="Seleccionador de archivos" --multiple);

