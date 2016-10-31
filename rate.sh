# lmx 2016-10-27,plates around the Japan Sea,PB2002.

#!/bin/bash
ps=./etopo1.ps
R=120/155/25/60
J=M5c
B=10/10
PS=./rate.ps

psxy -R$R -J$J -T -K > $PS
grdimage -R$R -J$J -B$B -Crate.cpt rate.3.6.nc -K -O >> $PS
pscoast -R$R -J$J -B$B -Glightblue -K -O >> $PS
psscale -B$B -Crate.cpt -D10.5c/-1c/15c/.35ch -K -O >> $PS
psxy -R$R -J$J -T -O >> $PS

