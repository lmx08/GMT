# lmx 2016-10-27,plates around the Japan Sea,PB2002.

#!/bin/bash
ps=./etopo1.ps
R=120/155/25/60
J=M5c
B=10/10
PS=plate.ps

psxy -R$R -J$J -T -K > $PS
pscoast -R$R -J$J -B$B -Ggray -N1/0.5p,white -K -O >> $PS
psxy PB2002_boundaries.dig.txt -R$R -J$J -m: -W1p,black -K -O >> $PS
psxy -R$R -J$J -T -O >> $PS
