#!/bin/bash
COMBOS()
{
cat<<EOF
hammerhead
anzu
coconut
codinalte
deb
d2lte
d710
d800
d801
d802
d803
dlx
e980
find5
flo
galaxysmtd
geeb
gee
golden
grouper
haida
hallon
hlte
i9100g
i605
i9300
i9305
iyokan
jewel
jflte
ls980
m4
m7att
m7spr
m7tmo
m7ul
m7vzw
maguro
mango
manta
mako
maserati
mondrianwifi
moto_msm8960
moto_msm8960dt
n1
nicki
p880
pollux
pollux_windy
satsuma
skomer
smultron
t0lteatt
t0ltetmo
tilapia
toro
toroplus
urushi
ville
vs980
yuga
EOF
}

for x in `COMBOS | sort -h`; do 
  add_lunch_combo vanir_$x-userdebug
  add_lunch_combo vanir_$x-user
done
