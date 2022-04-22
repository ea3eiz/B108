#!/bin/bash
sudo killall DMR2NXDN
sudo killall NXDNGateway

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_DMR2NXDN.desktop /home/pi

sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;xterm -geometry 88x17+1158+664 -bg black -fg white -fa 'Verdana' -fs 9x -T MMDVMDMR2NXDN -e sudo sh ejecutar_DMR2NXDN.sh'" /home/pi/Abrir_DMR2NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_DMR2NXDN_OFF.png" /home/pi/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Abrir DMR2NXDN" /home/pi/Abrir_DMR2NXDN.desktop
sed -i "16c DMR2NXDN=OFF" /home/pi/status.ini
sleep 2
cd /home/pi
sudo cp Abrir_DMR2NXDN.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_DMR2NXDN.desktop
