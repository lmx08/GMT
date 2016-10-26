# Color polygon
# From https://seisman.info/area-fill.html
#error messsage :  psxy: GMT Fatal Error: Z-slice with dz = 0

#!/bin/bash
# 方法一，直接由文件读取数据input.txt；
#psxy input2.txt -R0/360/-90/90 -JX15c/10c -m -B60/30 -W1p -L > gmt12.ps
psxy input.txt -R0/360/-90/90 -JX15c/10c -m -B60/30 -W1p -L -Carea.cpt > gmt12.ps

#方式2，直接输入区域数据；
# psxy input.txt -R0/360/-90/90 -JX15c/10c -m -B60/30 -W1p -L > gmt12.ps << EOF
#>
#30 20
#90 20
#90 60
#30 60
#>
#120 10
#150 35
#180 20
#160 -10
#130 -30
#>
#200 10
#230 25
#240 40
#280 5
#300 -20
#EOF



