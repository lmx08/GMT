#!/bin/bash
# from GMT EXAMPLE 01
#
ps=./contour.ps
R=120/150/30/55
J=M5c
B=10/10

gmtset GRID_CROSS_SIZE_PRIMARY 0 ANNOT_FONT_SIZE_PRIMARY 10 BASEMAP_TYPE fancy

psbasemap -R$R -J$J -B0 -P -K -U"Contour of the depth" > $ps
pscoast -R$R -J$J -N1/0.5p,white -O -K -B$B -Dc -Glightgray >> $ps
grdcontour -R$R etopo1.grd -J -C300 -A-+s7 -m -L-3500/1 -Wcthinnest -Wathin -O -T0.1i/0.02i >> $ps
