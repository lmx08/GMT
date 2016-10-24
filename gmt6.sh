# 6th postscript-Oct24,7:30
#from https://seisman.info/axes-without-ticks.html;
#change the format of -B,gmt4
#!/bin/bash

R=0/10/0/10
J=X10c/6c
ps=./example6.ps

psxy -J$J -R$R -T -K > $ps
psbasemap -R$R -J$J -Ba2/a2WS -K -O >> $ps  # -Bxa2 -Bya2 -BWS
psbasemap -R$R -J$J -B0en -K -O >> $ps      # -B0 -Ben
psxy -J$J -R$R -T -O >> $ps
