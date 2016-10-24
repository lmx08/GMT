# Rail trackc
# From https://seisman.info/plot-rail-tracks.html;

#!/bin/bash
R=0/10/0/5
J=M10c
ps=./example7.ps

gmtset BASEMAP_TYPE fancy #set a rail tracks frame，or plain

psbasemap -R$R -J$J -B1/2 -K > $ps
# Start rail tracks
psxy line.txt -R$R -J$J -K -O -W5p,black >> $ps
# End rail tracks
psxy line.txt -R$R -J$J -K -O -W5p,white,20_20: >> $ps
psxy -R$R -J$J -T -O  >> $ps

