#!/bin/bash

# Ejecuta Solo D-STAR
cd /home/pi/MMDVMHost
#/home/pi/B108/./qt_info_solodstar & sudo ircddbgateway -gui & sudo ./MMDVMDSTAR MMDVMDSTAR.ini 
sed -i '13c SOLODSTAR=ON' /home/pi/status.ini
sudo ./MMDVMDSTAR MMDVMDSTAR.ini &
sleep 10
sudo ircddbgateway -gui







