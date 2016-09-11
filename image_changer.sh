#!/bin/env bash

echo "Inicia el Script Image Changer";

#Seleccionando el o los archivos a convertir 

echo "Seleccionando archivos";

archivos=$(zenity --file-selection --title="Seleccionador de archivos" --multiple);

#Creacion de formulario para seleccionar el formato de salida 

echo "Fromulario para formato de salida";

formato=$(zenity --list --title="Lista de opciones de formato" --text="Escoje el formato al cual deceas convertir la imagen" --column="Selección" --column="Formatos" --radiolist "1" "png" "2" "jpg" "3" "jpeg" "3" "svg");



