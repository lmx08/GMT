# lmx 2016-11-2,Magnetic anomaly of the Japan Sea,EMAG_V1.

#!/bin/bash
ps=./EMAG2_V2.ps
R=125/150/30/50
J=M10c
B=a5g5

#grd2cpt EMAG2_V2.grd -CRainbow -E800 -T= > EMAG2_V2.cpt
makecpt -Chaxby -T-200/200/10  > EMAG2_V2.cpt
grdimage EMAG2_V2.grd -CEMAG2_V2.cpt -R$R -J$J -B$B:."Japan Magnetic Anomaly": -K > $ps
pscoast -R$R -J$J -W1/1p  -N1/1p -O -K >> $ps
psscale -CEMAG2_V2.cpt -D7.5c/-1c/15c/0.5ch -B$B/:"m": --D_FORMAT=%.0f -ANNOT_FONT_SIZE_PRIMARY=10p -O >> $ps

