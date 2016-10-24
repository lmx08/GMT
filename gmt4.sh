# 4th postscript-Oct23,22:16
ps=./examples4.ps
#!/bin/bash
gmtset HEADER_FONT_SIZE=16p
gmtset BASEMAP_TYPE=plain
psbasemap -R0/100/0/100 -Jx1c -Bg1 -X0c -Y0c -K > $ps
pscoast -Rd -JQ80/10c -B0:."plot_1": -W1 -Y10c -K -O >> $ps
pscoast -R -J -B0:."plot_2": -W1 -X12c -K -O >> $ps
pscoast -R -J -B0:."plot_3": -W1 -X-12c -Y-8c -K -O >> $ps
pscoast -R -J -B0:."plot_4": -W1 -X12c -O >> $ps
