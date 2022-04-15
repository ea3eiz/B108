#!/bin/bash

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Menu_Autoarranque.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_autoarranque.sh'" /home/pi/Menu_Autoarranque.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_AUTOARRANQUE1.png" /home/pi/Menu_Autoarranque.desktop
cd /home/pi
sudo cp Menu_Autoarranque.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Menu_Autoarranque.desktop
cd /home/pi/B108
./qt_OpenMenuAutoarranqueBarra
