#!/bin/bash
sudo killall MMDVMHost
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_Radio.desktop /home/pi

sudo sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;xterm -geometry 88x17+648+664 -bg black -fg white -fa 'Verdana' -fs 9x -T RADIO -e sudo sh OpenEjecutarRadio.sh'" /home/pi/Abrir_Radio.desktop
sudo sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_RADIO_OFF.png" /home/pi/Abrir_Radio.desktop
sudo sed -i "10c Name[es_ES]=Abrir RADIO" /home/pi/Abrir_Radio.desktop
sudo sed -i "5c MMDVM=OFF" /home/pi/status.ini

cd /home/pi
sudo cp Abrir_Radio.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_Radio.desktop
