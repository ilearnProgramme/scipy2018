#!/bin/bash

gmt begin
    gmt which @hotspots.txt -Gl
    gmt figure hotspots png
    gmt grdimage @earth_relief_10m -JG200/30/6i -Cgeo -I+
    gmt coast -W -Dc -Bafg
    gmt plot hotspots.txt -Sc0.2c -Gred
gmt end
