# 3th postscript-Oct23,10:45
ps=./examples3.ps
psxy bjwhsh.txt -R70/140/15/55 -JB105/30/20/40/20c -Ba20g10:."Map of China": -L -Wfat,255/0/255,. -K > $ps
psxy gz.txt -R -J -B -Sc1c -Wthinner,red -K -O >> $ps
#pstext 4names.txt -R -J -B -Gblack -Wgray -S0.6p,red -K -O >> $ps #error
pstext 4names.txt -R -J -B -Gblack -K -O >> $ps #
psxy 4names.txt -R -J -B -Sc0.3c -W0.3p,black -Gred -K -O >> $ps
pscoast -R -J -B -W1/0.5p,gray -N1/0.5p,black,- -I1/0.5p,blue -O >> $ps
