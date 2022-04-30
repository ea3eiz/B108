#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
cp ABRIR_DMR2M17.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh cerrar_DMR2M17.sh'" /home/pi/ABRIR_DMR2M17.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/ICONO_M17_ON.png" /home/pi/ABRIR_DMR2M17.desktop
sed -i "4c Name[es_ES]=Cerrar DMR2M17" /home/pi/ABRIR_DMR2M17.desktop
sed -i "21c DMR2M17=ON" /home/pi/status.ini
cd /home/pi
cp ABRIR_DMR2M17.desktop /home/pi/Desktop

sudo rm /home/pi/ABRIR_DMR2M17.desktop


cd /home/pi/MMDVMHost
sudo ./MMDVMDMR2M17 MMDVMDMR2M17.ini &


cd /home/pi/DMR2M17
sudo xterm -geometry 88x11+1272+420 -bg black -fg white -fa 'Verdana' -fs 9x -T DMR2M17 -e ./DMR2M17 DMR2M17.ini



  