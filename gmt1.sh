# First postscript-Oct23,10:00
ps=./example_01.ps #change directory
gmtset GRID_CROSS_SIZE_PRIMARY 0 ANNOT_FONT_SIZE_PRIMARY 10
psbasemap -R70/140/15/55 -JB105/30/20/40/15c -Ba20g10 -P -K -U"Example 1 in Cookbook" > $ps
pscoast -R -J -B -W1/0.5p,gray -O >> $ps
