# GMT 
No2.GMT postsript
From GMT之路-1.1.pdf and the blogs of SeisMan

1:files-gmt1.sh;
1)First postscript-Oct23,10:00

2:files-gmt2.sh,bjwhsh.TXT,gz.TXT;
1)Second postscript-Oct23,10:04
2)coordinats:Beijing,Wuhan,Shanghai
3)coordinats:Guangzhou

3:files-gmt3.sh,4names.txt;
1)3th postscript-Oct23,10:45
2)This file has 7columns:x,y,size,angle(anticlockwise),fontno,justify(text-align),text;

4:files-gmt4.sh.

5:files-gmt5.sh,osu91a1f_16.nc(from doc/examples/ex01)

6:files-gmt6.sh
Examples from the Internet. Modify the codes to satisfy my version of gmt4. Refer to the blog of SeisMan:https://seisman.info;

7:files:gmt7.sh,line.txt
Using "gmtset BASEMAP_TYPE fancy"to set a rail tracks frame.

10:files:gmt10.sh,points.txt,polygon.txt

11:files-gmt11.sh(gmt15.sh)
>> EOF 
＃input data
EOF


12:files-gmt12.sh,area.cpt,input.TXT;
error message: psxy: GMT Fatal Error: Z-slice with dz = 0

GMT之路2.0
13:files-gmtq3.sh,path3.TXT;
cut interested areas.
GMT2.0-P24,截取部分区域。
可设定多个区域

14:files:gmt14-japan.sh,
draw the area of Japan.

15:draw colorful line,http://seisman.info/plot-lines-with-gradient-colors.html;
 file: gmt15.sh(-m:multi-inputs)
 
16.crust.sh:draw colorful crust thinkness figure,using Etopo30 and crust1.0 data.

17.pb-JapanSea.sh:plate boundaries near Japan Sea,with DEM,from Etopo30 and globe topography.
