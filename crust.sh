# lmx 2016-11-2,Magnetic anomaly of the Japan Sea,EMAG_V1.

#!/bin/bash
ps=./out.ps
R=125/150/30/50
#R=140/160/35/55
J=M10c
B=a5g5

grd2cpt out.grd -Cwysiwyg  > out.cpt
#makecpt -Chaxby -T-200/200/10  > EMAG2_V2.cpt
grdimage out.grd -Cout.cpt -R$R -J$J -B$B:."Japan Magnetic Anomaly": -K > $ps
pscoast -R$R -J$J -W1/2p  -N1/1p -O -K >> $ps
psscale -Cout.cpt -D7.5c/-1c/15c/0.5ch -B$B/:"m": --D_FORMAT=%.0f -ANNOT_FONT_SIZE_PRIMARY=10p -O >> $ps

