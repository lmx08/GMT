# Points in polygon
# From https://seisman.info/points-inside-polygons.html
# 2016-10-24

#!/bin/bash
PS=./example10.ps

J=X10c/10c
R=0/10/0/10

psbasemap -J$J -R$R -B1 -K > $PS
# 绘制多边形
psxy polygon.txt -J$J -R$R -W2p -L -K -O >> $PS
# 绘制所有数据点：红色圆圈
psxy points.txt -J$J -R$R -Sc0.2c -Gred -K -O >> $PS
# 绘制多边形内的数据点：蓝色三角
gmtselect points.txt -Fpolygon.txt | psxy -J$J -R$R -St0.8c -W2p,blue -K -O >> $PS
psxy -J$J -R$R -T -O >> $PS



