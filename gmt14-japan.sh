#!/bin/bash
# from GMT EXAMPLE 01
#
ps=./Japan.ps
R=120/160/10/55
J=M5c
B=0

gmtset GRID_CROSS_SIZE_PRIMARY 0 ANNOT_FONT_SIZE_PRIMARY 10 BASEMAP_TYPE plain

psbasemap -R$R -J$J -B0 -P -K -U"Contour of the depth" > $ps
pscoast -R$R -J$J -N1/0.5p,white -O -K -B$B -Dc -Glightgray >> $ps
#grdcontour -R$R etopo1.grd -J -C400 -A-+s7 -m -L-3500/1 -Wcthinnest -Wathin -O -T0.1i/0.02i >> $ps
