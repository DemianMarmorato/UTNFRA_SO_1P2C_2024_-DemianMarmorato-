#!/bin/bash
# Creamos las 4 particiones primarias y luego las extendidas.
sudo fdisk /dev/sdc <<EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e



n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF
# formateamos las particiones creadas salvo la 4 ya que es la extendida.
sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11
# Montamos las particiones.
sudo mount /dev/sdc1 /Examenes-UTN/alumno1/parcial1
sudo mount /dev/sdc2 /Examenes-UTN/alumno1/parcial2
sudo mount /dev/sdc3 /Examenes-UTN/alumno1/parcial3
sudo mount /dev/sdc5 /Examenes-UTN/alumno2/parcial1
sudo mount /dev/sdc6 /Examenes-UTN/alumno2/parcial2
sudo mount /dev/sdc7 /Examenes-UTN/alumno2/parcial3
sudo mount /dev/sdc8 /Examenes-UTN/alumno3/parcial1
sudo mount /dev/sdc9 /Examenes-UTN/alumno3/parcial2
sudo mount /dev/sdc10 /Examenes-UTN/alumno3/parcial3
sudo mount /dev/sdc11 /Examenes-UTN/profesores
# Hacemos el montaje persistente de las particiones.
echo "/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 /Examenes-UTN/alumno_2/parcial_1  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /Examenes-UTN/alumno_2/parcial_2  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 /Examenes-UTN/alumno_2/parcial_3  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 /Examenes-UTN/alumno_3/parcial_1  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /Examenes-UTN/alumno_3/parcial_2  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 /Examenes-UTN/alumno_3/parcial_3  ext4 default 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc11 /Examenes-UTN/profesores  ext4 default 0 0" | sudo tee -a /etc/fstab
sudo mount -a
# chequeamos que se haya ejecutado correctamente.
sudo cat/etc/fstab
