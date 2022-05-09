#!/bin/bash
sudo killall -9 DMR2M17
sudo killall -9 MMDVMDMR2M17
cd /home/pi/Desktop
cp ABRIR_DMR2M17.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/B108; xterm -geometry 88x17+1272+664 -bg black -fg white -fa 'verdana' -fs 9x -T MMDVMDMR2M17 -e sudo sh ejecutar_DMR2M17.sh'" /home/pi/ABRIR_DMR2M17.desktop
sed -i "7c Icon=/home/pi/B108/ICONO_M17_OFF.png" /home/pi/ABRIR_DMR2M17.desktop
sed -i "4c Name[es_ES]=Abrir DMR2M17" /home/pi/ABRIR_DMR2M17.desktop
sed -i "21c DMR2M17=OFF" /home/pi/status.ini
cd /home/pi
cp ABRIR_DMR2M17.desktop /home/pi/Desktop

sudo rm /home/pi/ABRIR_DMR2M17.desktop





  