# draw colorful line,http://seisman.info/plot-lines-with-gradient-colors.html,
# #!/bin/bash
# GMT v5.2.1
makecpt -Crainbow -T-2/2/1 > lines.cpt
psxy -JX15c/4c -R0/6/0/4 -m -B1 -Clines.cpt -W2p > test.ps << EOF
> -Z-1.5
1 2
2 2
> -Z-0.5
2 2
3 2
> -Z0.5
3 2
4 2
> -Z1.5
4 2
5 2
EOF
