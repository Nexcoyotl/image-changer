#!/bin/env bash

echo "Inicia el Script Image Changer";

#Seleccionando el o los archivos a convertir 

echo "Seleccionando archivos";

archivo=$(zenity --file-selection --title="Seleccionador de archivos");
echo "El archivo que selecciono: $archivo";

#Creación de formulario para seleccionar el formato de salida 

echo "Formulario para formato de salida";

formato=$(zenity --list --title="Lista de opciones de formato" --text="Escoja el formato al cual deseas convertir la imagen" --column="Selección" --column="Formatos" --radiolist "1" "png" "2" "jpg" "3" "jpeg" "3" "svg");
echo "El formato que selecciono: $formato";

#Creación de Expresión Regular grep para separar la ruta la extensión original (png,jpg,jpeg,svg) para después agregar la nueva extensión

echo "Aplicando Expresión Regular grep para separar la extensión de la imagen";

archivo_er=$(echo "$archivo" | grep -E -o '[a-zA-Z\/]*[^\.][^a-z]');
echo "El resultado de aplicar la ER: $archivo_er";
 
#Generando el nuevo formato de la imagen seleccionada

archivo_nuevo=$archivo_er$formato;
echo "Este sera el nuevo formato $archivo_nuevo";

$(convert $archivo $archivo_nuevo);
$(chmod 755 $archivo_nuevo);

zenity --info --title="El Resultado de su conversión" --text="$(ls -l $archivo)\n$(ls -l $archivo_nuevo)";

echo "La conversión finalizo con éxito";

