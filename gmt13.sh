# GMT2.0-P24,截取部分区域。
# 可设定多个区域

ps=./example13.ps
makecpt -Chaxby -T-100/100/10 > image13.cpt
psclip path3.txt -JQ80/15c -m -Rd -B60:."osu91a1f_16": -K > $ps
grdimage osu91a1f_16.nc -Cimage13.cpt -R -J -K -O >> $ps
psclip -C -K -O >> $ps
pscoast -R -J -W -N1 -O -K >> $ps
psscale -Cimage13.cpt -D7.5c/-1c/15c/0.5ch -B20/:"m": -O >> $ps
