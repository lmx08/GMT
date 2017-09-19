# Learning GMT
# Read manual and use the codes to map.
# All the codes from GMT_Tutorial.pdf(version 4)

1)psbasemap -R10/70/-3/8 -JX4i/3i -B10/1:."My first plot": -P > plot.ps (P8)
2)psbasemap -R1/10000/1e20/1e25 -JX9il/6il -B2:"Wavelength (m)":/a1f3:"Power (W)":WS > plot2.ps(P9)
3)pscoast -R-90/-70/0/20 -JM6i -P -B5g5 -Gchocolate > map.ps(P9-Latin America)
4)pscoast -R120/150/30/60 -JM6i -P -B5g5 -Ggray > mapJapan.ps(change location-JapanSea)
5)pscoast -R-90/-70/0/20 -JM6i -P -B5g5 -W0.25pchocolate > mapW.ps(no colors,use lines)
