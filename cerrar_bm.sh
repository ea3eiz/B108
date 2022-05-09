#!/bin/bash
sudo killall -9 MMDVMBM
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_MMDVMBM.desktop /home/pi

sed -i "4cExec=sh -c 'cd /home/pi/$SCRIPTS_version; xterm -geometry 88x17+23+664 -bg black -fg white -fa 'Verdana' -fs 9x -T BRANDMEISTER -e sudo sh ejecutar_bm.sh'" /home/pi/Abrir_MMDVMBM.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_BM_OFF.png" /home/pi/Abrir_MMDVMBM.desktop
sed -i "10c Name[es_ES]=Abrir BM" /home/pi/Abrir_MMDVMBM.desktop
sed -i "7c MMDVMBM=OFF" /home/pi/status.ini
cd /home/pi

sudo cp Abrir_MMDVMBM.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_MMDVMBM.desktop


