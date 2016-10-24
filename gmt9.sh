# Colorful line
# From https://seisman.info/plot-specified-gridline-on-maps.html


#!/bin/bash
ps=./example9.ps

R=80/150/0/60
J=B116/20/25/45/15c
B=15
PS=map.ps

psbasemap -J$J -R$R -B$B -P -K > $PS
pscoast -J$J -R$R -Ggray -K -O >> $PS
echo 116.46 39.92 | psxy -J$J -R$R -Sc0.5c -Gred -K -O >> $PS
##### 核心命令
### ```bash error

#psxy -J$J -R$R -W1p,blue,- -K -O -Am >> $PS << EOF # error
psxy -J$J -R$R -m -W1p,blue,- -K -O -Am >> $PS << EOF  #add -m:Multiple segment files
>
116.46 0
116.46 60  # longtitude
>
80 39.92
150 39.92  # latitude
EOF
#####
psxy -J$J -R$R -T -O >> $PS
#rm gmt.*   ＃no such file



