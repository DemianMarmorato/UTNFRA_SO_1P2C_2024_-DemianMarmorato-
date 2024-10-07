#!/bin/bash

# con grep memtotal /proc/memimfo tengo toda la info de la RAM y la envio a un archivo llamado Filtro_Basico.txt con los datos.

grep MemTotal /proc/meminfo > /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

# Con dmidecode -t chassis y grep manufacturer extraigo los datos del chassis y fabricante y los envio al mismo archivo txt.

dmidecode -t chassis | grep "Manufacturer" >> /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

# añado un cat para visualizar los datos y comprobar que funciona bien el script. 

cat /root/repogit/UTNFRA_SO_1P2C_2024_-DemianMarmorato-/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
