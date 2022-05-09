#!/bin/bash
sudo killall -9 MMDVMDMRGATEWAY
sudo killall -9 DMRGateway

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_dmrgateway.desktop /home/pi/
sleep 1
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; xterm -geometry 88x17+1272+664 -bg black -fg white -fa 'Verdana' -fs 9x -T MMDVMDMRGATEWAY -e sudo sh ejecutar_dmrgateway.sh'" /home/pi/Abrir_dmrgateway.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMRGATEWAY_OFF.png" /home/pi/Abrir_dmrgateway.desktop
sed -i "10c Name[es_ES]=Abrir DMRGateway" /home/pi/Abrir_dmrgateway.desktop
sed -i "19c DMRGateway=OFF" /home/pi/status.ini
sleep 1
cd /home/pi/
sudo cp Abrir_dmrgateway.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_dmrgateway.desktop

