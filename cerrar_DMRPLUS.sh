#!/bin/bash
sudo killall -9 MMDVMPLUS
cd /home/pi/Desktop
sudo cp Abrir_MMDVMPLUS.desktop /home/pi

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
sudo sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;xterm -geometry 88x17+648+664 -bg black -fg white -fa 'Verdana' -fs 9x -T DMRPLUS -e sudo sh ejecutar_DMRPLUS.sh'" /home/pi/Abrir_MMDVMPLUS.desktop
sudo sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRPLUS_OFF.png" /home/pi/Abrir_MMDVMPLUS.desktop
sudo sed -i "10c Name[es_ES]=Abrir DMR+" /home/pi/Abrir_MMDVMPLUS.desktop
sudo sed -i "6c MMDVMPLUS=OFF" /home/pi/status.ini

cd /home/pi
sudo cp Abrir_MMDVMPLUS.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_MMDVMPLUS.desktop
