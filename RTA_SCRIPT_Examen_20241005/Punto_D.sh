#!/bin/bash

# creo la carpeta estructura asimetrica con correo y clientes
mkdir -p ~/Estructura_Asimetrica/correo ~/Estructura_Asimetrica/clientes

# con touch creo cartas_ poniendo un rango de 1 a 100 en correo y clientes
touch ~/Estructura_Asimetrica/correo/cartas_{1..100}
touch ~/Estructura_Asimetrica/clientes/cartas_{1..100}

# tambien con touch creo carteros_ en correo con un rango de 1 a 10
touch ~/Estructura_Asimetrica/correo/carteros_{1..10}

# pongo el comando para que al ejecutar el script se vea la estructura ya hecha sin tener que hacer comandos adicionales.

tree ~/Estructura_Asimetrica/ --noreport | pr -T5 -W80 --column=4


