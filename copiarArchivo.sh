#!/bin/bash

clear

echo -e "\n ____ Resguardar archivo ante una modificacion"
echo -e "\n ____ Estas en la siguiente ruta \n"
pwd
echo -e "\n ____ Ingresa ruta donde se encuentra el archivo a guardar "
echo -e "\n"

read ruta

if [ -a $ruta ]; then
	echo -e "\n ___ Ruta verficada"
	
	#listar contenio del directorio donde quiero guardar un archivo
	echo -e "\n ___ Listando contenido \n "
	ls $ruta	
	
	echo -e "\n ___ Ingrese el nombre del archivo que desea guardar \n"
	read archivo

	if [ -a $archivo ]; then	
		echo -e " ___ archivo verificado"
		cp $ruta/$archivo /home/mustang/docEditados/
		
		echo  "# .........  " >> $archivo 
		date >> /home/mustang/docEditados/$archivo
		pwd >> /home/mustang/docEditados/$archivo
		echo "#  ........." >>  /home/mustang/docEditados/$archivo 
		

		echo -e "\n ___ el archivo a sido copiado a docEditados"
	else 
		echo -e "\n ___ no se a logrado verificar el archivo"
	
	fi
else
 	echo -e "\n ___ La ruta no ha podido ser comprobada"
fi

echo -e "/n ........................ Realizado ......................./n /n /n /n"
