# lmx 2016-10-26,topography of the Japan Sea,etopo1.

#!/bin/bash
ps=./etopo1.ps
R=125/145/30/50
J=M10c
B=a5g5

grd2cpt etopo1.grd -CRainbow  -E50 -T= > etopo1.cpt
#makecpt -Chaxby -T-20000/20000/20 > etopo1.cpt
grdimage etopo1.grd -Cetopo1.cpt -R$R -J$J -B$B:."Japan Topography": -K > $ps
pscoast -R$R -J$J -W -N1 -O -K >> $ps
psscale -Cetopo1.cpt -D7.5c/-1c/15c/0.5ch -B$B/:"m": --D_FORMAT=%.0f -ANNOT_FONT_SIZE_PRIMARY=10p -O >> $ps

