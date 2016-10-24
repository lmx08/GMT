# 5th postscript-Oct23,22:16
#!/bin/bash

ps=./examples5.ps
makecpt -Chaxby -T-100/100/10 > image03.cpt
grdimage osu91a1f_16.nc -Cimage03.cpt -Rd -JQ80/15c -B60:."osu91a1f_16": -K > $ps
pscoast -R -J -W -N1 -O -K >> $ps
psscale -Cimage03.cpt -D7.5c/-1c/15c/0.5ch -B20/:"m": -O >> $ps
