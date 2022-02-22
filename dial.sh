#!/bin/bash

#sudo pppd connect '/usr/sbin/chat -f /home/pi/bao/ppp.script' /dev/ttyACM0 9600 0.0.0.0:0.0.0.0 noauth local debug dump defaultroute nocrtscts persist maxfail 0 holdoff 30
#sudo pppd 10.0.0.1:10.0.0.2 noauth local lock defaultroute debug nodetach /dev/ttyACM0 connect /home/pi/bao/client_init.sh
sudo pppd 10.0.0.3:10.0.0.2 noauth local lock defaultroute debug nodetach /dev/ttyACM0 connect /home/pi/bao/client_init.sh