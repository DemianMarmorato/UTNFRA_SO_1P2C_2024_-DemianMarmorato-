#!/bin/bash

# Extraigo los datos usando el comando curl- s ifconfig.me y $whoami, ademas extraigo el hash y la url remota del repo con los comandos provistos en el pdf del parcial y los envio a un archivo llamado Filtro_Avanzado.txt
# Ejecuto las lineas con sudo sh -c ya que probando estaba dando permission denied.

sudo sh -c 'echo "Mi IP Publica es: $(curl -s ifconfig.me)" > /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(echo -n $(whoami) | md5sum | awk '\''{print $1}'\'')" >> /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt'
