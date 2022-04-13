#!/bin/bash
sudo killall MMDVMHost
sudo killall ircddbgateway

sed -i '13c SOLODSTAR=OFF' /home/pi/status.
