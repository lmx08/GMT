# Second postscript-Oct23,10:04
ps=./example2.ps
psxy bjwhsh.txt -R70/140/15/55 -JB105/30/20/40/20c -Ba20g10:."Map of China": -L -Wfat,255/0/255,. -K > $ps
psxy gz.txt -R -J -B -Sc1c -Wthinner,red -K -O >> $ps
pscoast -R -J -B -W1/0.5p,gray -N1/0.5p,black,-－ -I1/0.5p,blue -O >> $ps
