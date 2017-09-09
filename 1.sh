#!/bin/bash
#Movimiento de fichero de una ruta a otra
clear
echo "Script que mueve un directorio a un basurero o lo recupera"

echo "Selecciona una opción: "
echo "1.- Mandar al basurero un archivo"
echo "2.- Recuperar del basurero un archivo"

read -p "introduzca opcion:" op

case $op in
1)
	echo "Mandar al basurero un archivo"
	echo "Introduzca la ruta inicial"
	read ruta
	if [ -a $ruta ]; then
		echo "El directorio existente se procede a eliminar"
		mv $ruta   /home/mustang/basurero
	echo "realizado"
	
	else
	echo "El directorio no existe"
	fi
;;
2)
	echo "Recuperar del basurero un archivo"
	ls /home/mustang/basurero
	
	echo "Introduzca el nombre del archivo que desea recuperar"
	read archivo
	

	
	if [ -f /home/mustang/basurero/$archivo ]; then
	echo "Archivo seleccionado"
		echo "introduzca la ruta de destino donde colocara el archivo"
		read dest
		if [ -a $dest ]; then
			echo "Ruta de destino encontrada, procediendo ..."
			mv /home/mustang/basurero/$archivo $dest
			echo "realizado"
		else
			echo "Hubo un problema, verificar la ruta de destino"
		fi



	else	
		echo "Hubo un problema al seleccionar el archivo"
	fi

	

;;
*)
echo "La opcion es incorrecta"
;;
esac
