#!/bin/bash
sudo killall -9 MMDVMFUSION
sudo killall -9 YSFGateway

SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)


cd /home/pi/Desktop
sudo cp Abrir_solofusion.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/B108/;xterm -geometry 88x17+648+664 -bg black -fg white -fa 'Verdana' -fs 9x -T SOLOFUSION -e sudo sh OpenEjecutarSolofusion.sh'" /home/pi/Abrir_solofusion.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_YSF.png" /home/pi/Abrir_solofusion.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" /home/pi/Abrir_solofusion.desktop
sed -i "12c SOLOFUSION=OFF" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_solofusion.desktop /home/pi/Desktop
sleep 4
rm /home/pi/Abrir_solofusion.desktop
