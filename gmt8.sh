# Colorful line
# From https://seisman.info/plot-lines-with-gradient-colors.html
# and GMT1.1
#

#!/bin/bash
ps=./example8.ps

makecpt -Crainbow -T-2/2/1 >lines.cpt
psxy -JX15c/4c -R0/6/0/4 -B1 -Clines.cpt -m -W2p -K > $ps << EOF #add -m,-K(to add psscale)
> -Z-1.5
1 2
2 2
> -Z-0.5
2 2
3 2
> -Z0.5
3 2
4 2
> -Z1.5
4 2
5 2
EOF

#psscale -Clines.cpt -D16c/2c/6c/0.5c -B0.5/:"m": -O >> $ps  # refer to "gmt6.sh",dafault vertical scale
psscale -Clines.cpt -D7.5c/-1c/15c/0.5ch -B0.5/:"m": -O >> $ps # -Dh:horizental scale;



