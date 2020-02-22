#!/bin/bash

NAME='Cello Expressivo'
FILE=Cello_Expressivo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 15 Cello/cllte1* -l "volume=0 tune=0 lovel=0 hivel=68" >> $FILE
sfzgen.py -n 15 Cello/cllte2* -l "volume=0 tune=0 lovel=69 hivel=105" >> $FILE
sfzgen.py -n 12 Cello/clltf3* -l "volume=0 tune=0 lovel=106 hivel=121" >> $FILE
sfzgen.py -n 12 Cello/clltf4* -l "volume=0 tune=0 lovel=122 hivel=127" >> $FILE


NAME='Cello Expressivo Mod'
FILE=Cello_Expressivo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 15 Cello/cllte1* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=68" >> $FILE
sfzgen.py -n 15 Cello/cllte2* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=69 xfout_locc1=95 xfout_hicc1=105" >> $FILE
sfzgen.py -n 12 Cello/clltf3* -l "volume=0 tune=0 xfin_locc1=96 xfin_hicc1=106 xfout_locc1=110 xfout_hicc1=121" >> $FILE
sfzgen.py -n 12 Cello/clltf4* -l "volume=0 tune=0 xfin_locc1=111 xfin_hicc1=122" >> $FILE


NAME='Cello Tremolo'
FILE=Cello_Tremolo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 14  $(ls Cello/clto1* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto2* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=61 hivel=109" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=110 hivel=127" >> $FILE

sfzgen.py -n 14  $(ls Cello/clto1* | grep  Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto2* | grep  Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=109" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto3* | grep  Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE

NAME='Cello Tremolo Modwheel'
FILE=Cello_Tremolo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 14  $(ls Cello/clto1* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfout_locc1=40 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=41 xfin_hicc1=61 xfout_locc1=90 xfout_hicc1=108" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=91 xfin_hicc1=109" >> $FILE

sfzgen.py -n 14  $(ls Cello/clto1* | grep  Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=40 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto3* | grep  Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=41 xfin_hicc1=61 xfout_locc1=90 xfout_hicc1=108" >> $FILE
sfzgen.py -n 14  $(ls Cello/clto3* | grep  Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=91 xfin_hicc1=109" >> $FILE


NAME='Cello Sustained'
FILE=Cello_Sustained.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 12  $(ls Cello/clltf1* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=0 hivel=56" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf2* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=57 hivel=80" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=81 hivel=113" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf4* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=114 hivel=127" >> $FILE

sfzgen.py -n 12  $(ls Cello/clltf1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=56" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=57 hivel=80" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf3* | grep  Rel) -l "trigger=release volume=0 tune=0 lovel=81 hivel=113" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf4* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=114 hivel=127" >> $FILE

NAME='Cello Sustained Mod'
FILE=Cello_Sustained_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 12  $(ls Cello/clltf1* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfout_locc1=40 xfout_hicc1=56" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf2* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=41 xfin_hicc1=57 xfout_locc1=65 xfout_hicc1=80" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=66 xfin_hicc1=81 xfout_locc1=97 xfout_hicc1=113" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf4* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=98 xfin_hicc1=114" >> $FILE

sfzgen.py -n 12  $(ls Cello/clltf1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=40 xfout_hicc1=56" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=41 xfin_hicc1=57 xfout_locc1=65 xfout_hicc1=80" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf3* | grep  Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=66 xfin_hicc1=81 xfout_locc1=97 xfout_hicc1=113" >> $FILE
sfzgen.py -n 12  $(ls Cello/clltf4* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=98 xfin_hicc1=114" >> $FILE

NAME='Cello Trem Sul Porticello'
FILE=Cello_Trem_Sul_Porticello.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 15  $(ls Cello/cltsp1* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp2* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=61 hivel=109" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 lovel=110 hivel=127" >> $FILE

sfzgen.py -n 15  $(ls Cello/cltsp1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=109" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp3* | grep  Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE

NAME='Cello Trem Sul Porticello Mod'
FILE=Cello_Trem_Sul_Porticello_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 15  $(ls Cello/cltsp1* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfout_locc1=40 xfout_hicc1=60" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp2* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=41 xfin_hicc1=61 xfout_locc1=90 xfout_hicc1=109" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp3* | grep -v Rel) -l "trigger=attack volume=0 tune=0 xfin_locc1=91 xfin_hicc1=110" >> $FILE

sfzgen.py -n 15  $(ls Cello/cltsp1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=40 xfout_hicc1=60" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=41 xfin_hicc1=61 xfout_locc1=90 xfout_hicc1=109" >> $FILE
sfzgen.py -n 15  $(ls Cello/cltsp3* | grep  Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=91 xfin_hicc1=110" >> $FILE

NAME="Cello Staccato Stretched"
FILE=Cello_Staccato_Stretch.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
// Bow direction with cc22
// cc22 below 42, both directions
// 43-85 up bow
// 86-127 down bow
label_cc22=Bow Direction
label_cc73=Attack
label_cc72=Release
set_cc22=0
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -s -n 11 Cello/clst1* -l "volume=0 tune=0 lovel=0 hivel=64 hicc22=42" >> $FILE
sfzgen.py -s -n 11 Cello/clst2* -l "volume=0 tune=0 lovel=65 hivel=98 hicc22=42" >> $FILE
sfzgen.py -s -n 11 Cello/clst3* -l "volume=0 tune=0 lovel=99 hivel=117 hicc22=42" >> $FILE
sfzgen.py -s -n 10 Cello/clma* -l "volume=0 tune=0 lovel=118 hivel=127" >> $FILE
sfzgen.py -s -n 11 Cello/clst1*u-s* -l "volume=0 tune=0 lovel=0 hivel=64 locc22=43 hicc22=85" >> $FILE
sfzgen.py -s -n 11 Cello/clst2*u-s* -l "volume=0 tune=0 lovel=65 hivel=98 locc22=43 hicc22=85" >> $FILE
sfzgen.py -s -n 11 Cello/clst3*u-s* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=43 hicc22=85" >> $FILE
sfzgen.py -s -n 11 Cello/clst1*d-s* -l "volume=0 tune=0 lovel=0 hivel=64 locc22=86" >> $FILE
sfzgen.py -s -n 11 Cello/clst2*d-s* -l "volume=0 tune=0 lovel=65 hivel=98 locc22=86" >> $FILE
sfzgen.py -s -n 11 Cello/clst3*d-s* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=86" >> $FILE



NAME="Cello Staccato"
FILE=Cello_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
// Bow direction with cc22
// cc22 below 42, both directions
// 43-85 up bow
// 86-127 down bow
label_cc22=Bow Direction
label_cc73=Attack
label_cc72=Release
set_cc22=0
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -n 11 Cello/clst1* -l "volume=0 tune=0 lovel=0 hivel=64 hicc22=42" >> $FILE
sfzgen.py -n 11 Cello/clst2* -l "volume=0 tune=0 lovel=65 hivel=98 hicc22=42" >> $FILE
sfzgen.py -n 11 Cello/clst3* -l "volume=0 tune=0 lovel=99 hivel=117 hicc22=42" >> $FILE
sfzgen.py -n 10 Cello/clma* -l "volume=0 tune=0 lovel=118 hivel=127" >> $FILE

sfzgen.py -n 11 Cello/clst1*u-s* -l "volume=0 tune=0 lovel=0 hivel=64 locc22=43 hicc22=85" >> $FILE
sfzgen.py -n 11 Cello/clst2*u-s* -l "volume=0 tune=0 lovel=65 hivel=98 locc22=43 hicc22=85" >> $FILE
sfzgen.py -n 11 Cello/clst3*u-s* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=43 hicc22=85" >> $FILE

sfzgen.py -n 11 Cello/clst1*d-s* -l "volume=0 tune=0 lovel=0 hivel=64 locc22=86" >> $FILE
sfzgen.py -n 11 Cello/clst2*d-s* -l "volume=0 tune=0 lovel=65 hivel=98 locc22=86" >> $FILE
sfzgen.py -n 11 Cello/clst3*d-s* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=86" >> $FILE


NAME="Cello Spiccato"
FILE=Cello_Spiccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
// Bow direction with cc22
// cc22 below 42, both directions
// 43-85 up bow
// 86-127 down bow
label_cc22=Bow Direction
label_cc73=Attack
label_cc72=Release
set_cc22=0
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -n 11 Cello/clsp1* -l "volume=0 tune=0 lovel=0 hivel=95 hicc22=42" >> $FILE
sfzgen.py -n 11 Cello/clsp2* -l "volume=0 tune=0 lovel=96 hivel=127 hicc22=42" >> $FILE

sfzgen.py -n 11 Cello/clsp1*u-s* -l "volume=0 tune=0 lovel=0 hivel=95 locc22=43 hicc22=85" >> $FILE
sfzgen.py -n 11 Cello/clsp2*u-s* -l "volume=0 tune=0 lovel=96 hivel=127 locc22=43 hicc22=85" >> $FILE

sfzgen.py -n 11 Cello/clsp1*d-s* -l "volume=0 tune=0 lovel=0 hivel=95 locc22=86" >> $FILE
sfzgen.py -n 11 Cello/clsp2*d-s* -l "volume=0 tune=0 lovel=96 hivel=127 locc22=86" >> $FILE


NAME="Cello Pizzicato"
FILE=Cello_Pizzicato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -n 11 Cello/clpz1* -l "volume=0 tune=0 lovel=0 hivel=68" >> $FILE
sfzgen.py -n 11 Cello/clpz2* -l "volume=0 tune=0 lovel=69 hivel=98" >> $FILE
sfzgen.py -n 11 Cello/clpz3* -l "volume=0 tune=0 lovel=99 hivel=122" >> $FILE
sfzgen.py -n 11 Cello/clpz4* -l "volume=0 tune=0 lovel=123 hivel=127" >> $FILE

NAME='Contra Bass Expressivo'
FILE=ContraBass_Expressivo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 20 ContraBass/bslte1* -l "volume=0 tune=0 lovel=0 hivel=70" >> $FILE
sfzgen.py -n 20 ContraBass/bslte2* -l "volume=0 tune=0 lovel=71 hivel=101" >> $FILE
sfzgen.py -n 17 ContraBass/bsltf3* -l "volume=0 tune=0 lovel=102 hivel=120" >> $FILE
sfzgen.py -n 17 ContraBass/bsltf4* -l "volume=0 tune=0 lovel=121 hivel=127" >> $FILE


NAME='Contra Bass Expressivo Mod'
FILE=ContraBass_Expressivo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 20 ContraBass/bslte1* -l "volume=0 tune=0 xfout_locc1=50 xfout_hicc1=70" >> $FILE
sfzgen.py -n 20 ContraBass/bslte2* -l "volume=0 tune=0 xfin_locc1=51 xfin_hicc1=71 xfout_locc1=88 xfout_hicc1=101" >> $FILE
sfzgen.py -n 17 ContraBass/bsltf3* -l "volume=0 tune=0 xfin_locc1=89 xfin_hicc1=102 xfout_locc1=110 xfout_hicc1=120" >> $FILE
sfzgen.py -n 17 ContraBass/bsltf4* -l "volume=0 tune=0 xfin_locc1=111 xfin_hicc1=121" >> $FILE


NAME="Contra Bass Pizzicato"
FILE=ContraBass_Pizzicato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -n 21 ContraBass/bspz1* -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 19 -n 16 ContraBass/bspz2* -l "volume=0 tune=0 lovel=59 hivel=88" >> $FILE
sfzgen.py -n 21 ContraBass/bspz3* -l "volume=0 tune=0 lovel=89 hivel=120" >> $FILE
sfzgen.py -n 21 ContraBass/bspz4* -l "volume=0 tune=0 lovel=121 hivel=127" >> $FILE


NAME='Contra Bass Spiccato'
FILE=ContraBass_Spiccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
// Bow direction with cc22
// cc22 below 42, both directions
// 43-85 up bow
// 86-127 down bow
label_cc22=Bow Direction
label_cc73=Attack
label_cc72=Release
set_cc22=0
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -n 16 ContraBass/bssp1* -l "volume=0 tune=0 lovel=0 hivel=95 hicc22=42" >> $FILE
sfzgen.py -n 16 ContraBass/bssp2* -l "volume=0 tune=0 lovel=96 hivel=127 hicc22=42" >> $FILE

sfzgen.py -n 16 ContraBass/bssp1* -l "volume=0 tune=0 lovel=0 hivel=95 locc22=43 hicc22=85" >> $FILE
sfzgen.py -n 16 ContraBass/bssp2* -l "volume=0 tune=0 lovel=96 hivel=127 locc22=43 hicc22=85" >> $FILE

sfzgen.py -n 16 ContraBass/bssp1* -l "volume=0 tune=0 lovel=0 hivel=95 locc22=86" >> $FILE
sfzgen.py -n 16 ContraBass/bssp2* -l "volume=0 tune=0 lovel=96 hivel=127 locc22=86" >> $FILE


NAME='Contra Bass Staccato Stretch'
FILE=ContraBass_Staccato_Stretch.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
// Bow direction with cc22
// cc22 below 42, both directions
// 43-85 up bow
// 86-127 down bow
label_cc22=Bow Direction
label_cc73=Attack
label_cc72=Release
set_cc22=0
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -s -n 16 ContraBass/bsst1* -l "volume=0 tune=0 lovel=0 hivel=65 hicc22=42" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst2* -l "volume=0 tune=0 lovel=66 hivel=98 hicc22=42" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst3* -l "volume=0 tune=0 lovel=99 hivel=117 hicc22=42" >> $FILE
sfzgen.py -s -n 15 ContraBass/bsma* -l "volume=0 tune=0 lovel=118 hivel=127" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst1* -l "volume=0 tune=0 lovel=0 hivel=65 locc22=43 hicc22=85" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst2* -l "volume=0 tune=0 lovel=66 hivel=98 locc22=43 hicc22=85" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst3* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=43 hicc22=85" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst1* -l "volume=0 tune=0 lovel=0 hivel=65 locc22=86" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst2* -l "volume=0 tune=0 lovel=66 hivel=98 locc22=86" >> $FILE
sfzgen.py -s -n 16 ContraBass/bsst3* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=86" >> $FILE

NAME='Contra Bass Staccato'
FILE=ContraBass_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
// Bow direction with cc22
// cc22 below 42, both directions
// 43-85 up bow
// 86-127 down bow
label_cc22=Bow Direction
label_cc73=Attack
label_cc72=Release
set_cc22=0
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOF
sfzgen.py -n 16 ContraBass/bsst1* -l "volume=0 tune=0 lovel=0 hivel=65 hicc22=42" >> $FILE
sfzgen.py -n 16 ContraBass/bsst2* -l "volume=0 tune=0 lovel=66 hivel=98 hicc22=42" >> $FILE
sfzgen.py -n 16 ContraBass/bsst3* -l "volume=0 tune=0 lovel=99 hivel=117 hicc22=42" >> $FILE
sfzgen.py -n 15 ContraBass/bsma* -l "volume=0 tune=0 lovel=118 hivel=127" >> $FILE

sfzgen.py -n 16 ContraBass/bsst1* -l "volume=0 tune=0 lovel=0 hivel=65 locc22=43 hicc22=85" >> $FILE
sfzgen.py -n 16 ContraBass/bsst2* -l "volume=0 tune=0 lovel=66 hivel=98 locc22=43 hicc22=85" >> $FILE
sfzgen.py -n 16 ContraBass/bsst3* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=43 hicc22=85" >> $FILE

sfzgen.py -n 16 ContraBass/bsst1* -l "volume=0 tune=0 lovel=0 hivel=65 locc22=86" >> $FILE
sfzgen.py -n 16 ContraBass/bsst2* -l "volume=0 tune=0 lovel=66 hivel=98 locc22=86" >> $FILE
sfzgen.py -n 16 ContraBass/bsst3* -l "volume=0 tune=0 lovel=99 hivel=117 locc22=86" >> $FILE


NAME='Contra Bass Sustained'
FILE=ContraBass_Sustained.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 17 $(ls ContraBass/bsltf1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=54" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf2* | grep -v Rel) -l "volume=0 tune=0 lovel=55 hivel=85" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf3* | grep -v Rel) -l "volume=0 tune=0 lovel=86 hivel=111" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf4* | grep -v Rel) -l "volume=0 tune=0 lovel=112 hivel=127" >> $FILE

sfzgen.py -n 17 $(ls ContraBass/bsltf1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=54" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=55 hivel=85" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=86 hivel=111" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf4* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=112 hivel=127" >> $FILE

NAME='Contra Bass Sustained Mod'
FILE=ContraBass_Sustained_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 17 $(ls ContraBass/bsltf1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=30 xfout_hicc1=54" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=31 xfin_hicc1=55 xfout_locc1=70 xfout_hicc1=85" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=71 xfin_hicc1=86 xfout_locc1=98 xfout_hicc1=111" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf4* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=99 xfin_hicc1=112" >> $FILE

sfzgen.py -n 17 $(ls ContraBass/bsltf1* | grep Rel) -l "volume=0 tune=0 xfout_locc1=30 xfout_hicc1=54" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf2* | grep Rel) -l "volume=0 tune=0 xfin_locc1=31 xfin_hicc1=55 xfout_locc1=70 xfout_hicc1=85" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf3* | grep Rel) -l "volume=0 tune=0 xfin_locc1=71 xfin_hicc1=86 xfout_locc1=98 xfout_hicc1=111" >> $FILE
sfzgen.py -n 17 $(ls ContraBass/bsltf4* | grep Rel) -l "volume=0 tune=0 xfin_locc1=99 xfin_hicc1=112" >> $FILE



NAME='Contra Bass Tremolo'
FILE=ContraBass_Tremolo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 19 $(ls ContraBass/bsto1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto2* | grep -v Rel) -l "volume=0 tune=0 lovel=61 hivel=87" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto3* | grep -v Rel) -l "volume=0 tune=0 lovel=88 hivel=127" >> $FILE

sfzgen.py -n 19 $(ls ContraBass/bsto1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=87" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=88 hivel=127" >> $FILE

NAME='Contra Bass Tremolo Mod'
FILE=ContraBass_Tremolo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 19 $(ls ContraBass/bsto1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88" >> $FILE

sfzgen.py -n 19 $(ls ContraBass/bsto1* | grep Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto2* | grep Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto3* | grep Rel) -l "volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88" >> $FILE

NAME='Contra Bass Trem Sul Ponticello'
FILE=ContraBass_TremSulPonticello.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 19 $(ls ContraBass/bsto1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto2* | grep -v Rel) -l "volume=0 tune=0 lovel=61 hivel=109" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bsto3* | grep -v Rel) -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE

sfzgen.py -n 19 $(ls ContraBass/bstp1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bstp2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=109" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bstp3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE

NAME='Contra Bass Trem Sul Ponticello Mod'
FILE=ContraBass_TremSulPonticello_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 19 $(ls ContraBass/bstp1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bstp2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=90 xfout_hicc1=109" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bstp3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=91 xfin_hicc1=110" >> $FILE

sfzgen.py -n 19 $(ls ContraBass/bstp1* | grep Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bstp2* | grep Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=90 xfout_hicc1=109" >> $FILE
sfzgen.py -n 19 $(ls ContraBass/bstp3* | grep Rel) -l "volume=0 tune=0 xfin_locc1=91 xfin_hicc1=110" >> $FILE


NAME='Violin Expressivo'
FILE=Violin_Expressivo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 12 Violin/v1lt1* -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 12 Violin/v1lt2* -l "volume=0 tune=0 lovel=59 hivel=92" >> $FILE
sfzgen.py -n 13 Violin/v1ltf3* -l "volume=0 tune=0 lovel=93 hivel=127" >> $FILE


NAME='Violin Expressivo Mod'
FILE=Violin_Expressivo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF
sfzgen.py -n 12 Violin/v1lt1* -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=58" >> $FILE
sfzgen.py -n 12 Violin/v1lt2* -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=59 xfout_locc1=78 xfout_hicc1=92" >> $FILE
sfzgen.py -n 13 Violin/v1ltf3* -l "volume=0 tune=0 xfin_locc1=79 xfin_hicc1=93" >> $FILE


############################################################
NAME="Violin Pizzicato"
FILE=Violin_Pizzicato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Violin/v1pz1* -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 12 Violin/v1pz2* -l "volume=0 tune=0 lovel=59 hivel=90" >> $FILE
sfzgen.py -n 12 Violin/v1pz3* -l "volume=0 tune=0 lovel=91 hivel=120" >> $FILE
sfzgen.py -n 12 Violin/v1pz5* -l "volume=0 tune=0 lovel=121 hivel=127" >> $FILE


############################################################
NAME="Violin Spiccato"
FILE=Violin_Spiccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Violin/vl1sp1* -l "volume=0 tune=0 lovel=0 hivel=98" >> $FILE
sfzgen.py -n 13 Violin/vl1sp2* -l "volume=0 tune=0 lovel=99 hivel=127" >> $FILE


############################################################
NAME="Violin Staccato"
FILE=Violin_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Violin/v1stn1* -l "volume=0 tune=0 lovel=0 hivel=63" >> $FILE
sfzgen.py -n 13 Violin/v1stn2* -l "volume=0 tune=0 lovel=64 hivel=88" >> $FILE
sfzgen.py -n 13 Violin/v1stn3* -l "volume=0 tune=0 lovel=89 hivel=127" >> $FILE



############################################################
NAME="Violin Sustained"
FILE=Violin_Sustained.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Violin/v1ltf1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=46" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf2* | grep -v Rel) -l "volume=0 tune=0 lovel=47 hivel=80" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf3* | grep -v Rel) -l "volume=0 tune=0 lovel=81 hivel=109" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf4* | grep -v Rel) -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE

sfzgen.py -n 13 $(ls Violin/v1ltf1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=46" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=47 hivel=80" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=81 hivel=109" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf4* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE

###  --------- ###
NAME="Violin Sustained Mod"
FILE=Violin_Sustained_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Violin/v1ltf1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=31 fout_hicc1=46" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=32 xfin_hicc1=47 xfout_locc1=65 xfout_hicc1=80" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=66 xfin_hicc1=81 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf4* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

sfzgen.py -n 13 $(ls Violin/v1ltf1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=31 fout_hicc1=46" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=32 xfin_hicc1=47 xfout_locc1=65 xfout_hicc1=80" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf3* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=66 xfin_hicc1=81 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 13 $(ls Violin/v1ltf4* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Violin Tremolo"
FILE=Violin_Tremolo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 $(ls Violin/vl1t1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t2* | grep -v Rel) -l "volume=0 tune=0 lovel=59 hivel=109" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t3* | grep -v Rel) -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE

sfzgen.py -n 12 $(ls Violin/vl1t1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=59 hivel=109" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE



###  --------- ###
NAME="Violin Tremolo Mod"
FILE=Violin_Tremolo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 $(ls Violin/vl1t1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=43 fout_hicc1=58" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=43 fout_hicc1=58" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE
sfzgen.py -n 12 $(ls Violin/vl1t3* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Violin Trem Sul Ponticello"
FILE=Violin_Tremolo_Sul_Ponticello.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 $(ls Violin/v1tp1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 12 $(ls Violin/v1tp1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp2* | grep -v Rel) -l "volume=0 tune=0 lovel=59 hivel=109" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=59 hivel=109" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp3* | grep -v Rel) -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE


###  --------- ###
NAME="Violin Trem Sul Ponticello Mod"
FILE=Violin_Trem_Sul_Ponticello_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 $(ls Violin/v1tp1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=43 fout_hicc1=58" >> $FILE
sfzgen.py -n 12 $(ls Violin/v1tp1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=43 fout_hicc1=58" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE
sfzgen.py -n 14 $(ls Violin/vl1tsp3* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Viola Espressivo"
FILE=Viola_Espressivo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 16 Viola/vlalte1* -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 16 Viola/vlalte2* -l "volume=0 tune=0 lovel=59 hivel=92" >> $FILE
sfzgen.py -n 13 Viola/vlaltf3* -l "volume=0 tune=0 lovel=93 hivel=127" >> $FILE




###  --------- ###
NAME="Viola Espressivo Mod"
FILE=Viola_Espressivo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 16 Viola/vlalte1* -l "volume=0 tune=0 xfout_locc1=43 fout_hicc1=58" >> $FILE
sfzgen.py -n 16 Viola/vlalte2* -l "volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=77 xfout_hicc1=92" >> $FILE
sfzgen.py -n 13 Viola/vlaltf3* -l "volume=0 tune=0 xfin_locc1=78 xfin_hicc1=93" >> $FILE

############################################################
NAME="Viola Pizzicato"
FILE=Viola_Pizzicato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Viola/vlapz1* -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 12 Viola/vlapz2* -l "volume=0 tune=0 lovel=59 hivel=90" >> $FILE
sfzgen.py -n 12 Viola/vlapz3* -l "volume=0 tune=0 lovel=91 hivel=120" >> $FILE
sfzgen.py -n 12 Viola/vlapz4* -l "volume=0 tune=0 lovel=121 hivel=127" >> $FILE

############################################################
NAME="Viola Spiccato"
FILE=Viola_Spiccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Viola/vlasp1* -l "volume=0 tune=0 lovel=0 hivel=95" >> $FILE
sfzgen.py -n 12 Viola/vlasp2* -l "volume=0 tune=0 lovel=96 hivel=127" >> $FILE

############################################################
NAME="Viola Staccato"
FILE=Viola_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Viola/vlast1* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n 12 Viola/vlast2* -l "volume=0 tune=0 lovel=65 hivel=98" >> $FILE
sfzgen.py -n 12 Viola/vlast3* -l "volume=0 tune=0 lovel=99 hivel=117" >> $FILE
sfzgen.py -n 11 Viola/Vlama* -l "volume=0 tune=0 lovel=118 hivel=127" >> $FILE

############################################################
NAME="Viola Sustain"
FILE=Viola_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Viola/vlaltf1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=50" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=50" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf2* | grep -v Rel) -l "volume=0 tune=0 lovel=51 hivel=80" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=51 hivel=80" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf3* | grep -v Rel) -l "volume=0 tune=0 lovel=81 hivel=109" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=81 hivel=109" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf4* | grep -v Rel) -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf4* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE




###  --------- ###
NAME="Viola Sustain Mod"
FILE=Viola_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Viola/vlaltf1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=35 xfout_hicc1=50" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=35 fout_hicc1=50" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=36 xfin_hicc1=51 xfout_locc1=65 xfout_hicc1=80" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=36 xfin_hicc1=51 xfout_locc1=65 xfout_hicc1=80" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=66 xfin_hicc1=81 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf3* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=66 xfin_hicc1=81 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf4* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE
sfzgen.py -n 13 $(ls Viola/vlaltf4* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Viola Tremolo"
FILE=Viola_Tremolo.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 15 $(ls Viola/vlato1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato2* | grep -v Rel) -l "volume=0 tune=0 lovel=59 hivel=94" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=59 hivel=94" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato3* | grep -v Rel) -l "volume=0 tune=0 lovel=95 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=95 hivel=127" >> $FILE



###  --------- ###
NAME="Viola Tremolo Mod"
FILE=Viola_Tremolo_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 15 $(ls Viola/vlato1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=43 xfout_hicc1=58" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=43 xfout_hicc1=58" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=79 xfout_hicc1=94" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=79 xfout_hicc1=94" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=80 xfin_hicc1=95" >> $FILE
sfzgen.py -n 15 $(ls Viola/vlato3* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=80 xfin_hicc1=95" >> $FILE

############################################################
NAME="Viola Trem Sul Ponticello"
FILE=Viola_Trem_Sul_Ponticello.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 16 $(ls Viola/vlatsp1* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp1* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=58" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp2* | grep -v Rel) -l "volume=0 tune=0 lovel=59 hivel=109" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp2* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=59 hivel=109" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp3* | grep -v Rel) -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp3* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=110 hivel=127" >> $FILE



###  --------- ###
NAME="Viola Trem Sul Ponticello Mod"
FILE=Viola_Trem_Sul_Ponticello_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 16 $(ls Viola/vlatsp1* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=43 xfout_hicc1=58" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp1* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=43 xfout_hicc1=58" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp2* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp2* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=44 xfin_hicc1=59 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp3* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE
sfzgen.py -n 16 $(ls Viola/vlatsp3* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Trumpets Double Tongue"
FILE=Trumpets_Double_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/t?taP* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n13 -n15 Brass/t?taMF* -l "volume=0 tune=0 lovel=65 hivel=101" >> $FILE
sfzgen.py -n12 -n14 Brass/t?taF* -l "volume=0 tune=0 lovel=102 hivel=127" >> $FILE


###  --------- ###
NAME="Trumpets Double Tongue Mod"
FILE=Trumpets_Double_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/t?taP* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n13 -n15 Brass/t?taMF* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n12 -n14 Brass/t?taF* -l "volume=0 tune=0 xfin_locc1=87 xfin_hicc1=102" >> $FILE

############################################################
NAME="Trumpets Flutter Tongue"
FILE=Trumpets_Flutter_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?fltP* -l "volume=0 tune=0 lovel=0 hivel=86" >> $FILE
sfzgen.py -n 13 Brass/t?fltF* -l "volume=0 tune=0 lovel=87 hivel=127" >> $FILE


###  --------- ###
NAME="Trumpets Flutter Tongue Mod"
FILE=Trumpets_Flutter_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?fltP* -l "volume=0 tune=0 xfout_locc1=71 xfout_hicc1=86" >> $FILE
sfzgen.py -n 13 Brass/t?fltF* -l "volume=0 tune=0 xfin_locc1=72 xfin_hicc1=87" >> $FILE

############################################################
NAME="Trumpets Marcato"
FILE=Trumpets_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?legP* -l "volume=0 tune=0 lovel=0 hivel=61" >> $FILE
sfzgen.py -n 14 Brass/t?legMF* -l "volume=0 tune=0 lovel=62 hivel=86" >> $FILE
sfzgen.py -n 14 Brass/t?marMF* -l "volume=0 tune=0 lovel=87 hivel=108" >> $FILE
sfzgen.py -n 15 Brass/t?marFFF* -l "volume=0 tune=0 lovel=109 hivel=127" >> $FILE


###  --------- ###
NAME="Trumpets Marcato Mod"
FILE=Trumpets_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?legP* -l "volume=0 tune=0 xfout_locc1=46 xfout_hicc1=61" >> $FILE
sfzgen.py -n 14 Brass/t?legMF* -l "volume=0 tune=0 xfin_locc1=47 xfin_hicc1=62 xfout_locc1=71 xfout_hicc1=86" >> $FILE
sfzgen.py -n 14 Brass/t?marMF* -l "volume=0 tune=0 xfin_locc1=72 xfin_hicc1=87 xfout_locc1=93 xfout_hicc1=108" >> $FILE
sfzgen.py -n 15 Brass/t?marFFF* -l "volume=0 tune=0 xfin_locc1=94 xfin_hicc1=109" >> $FILE

############################################################
NAME="Trumpets Mute Staccato"
FILE=Trumpets_Mute_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?stmP* -l "volume=0 tune=0 lovel=0 hivel=65" >> $FILE
sfzgen.py -n 14 Brass/t?stmMF* -l "volume=0 tune=0 lovel=66 hivel=100" >> $FILE
sfzgen.py -n 14 Brass/t?stmFF* -l "volume=0 tune=0 lovel=101 hivel=127" >> $FILE


###  --------- ###
NAME="Trumpets Mute Staccato Mod"
FILE=Trumpets_Mute_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?stmP* -l "volume=0 tune=0 xfout_locc1=50 xfout_hicc1=65" >> $FILE
sfzgen.py -n 14 Brass/t?stmMF* -l "volume=0 tune=0 xfin_locc1=51 xfin_hicc1=66 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n 14 Brass/t?stmFF* -l "volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101" >> $FILE


############################################################
NAME="Trumpets Mute Sustain"
FILE=Trumpets_Mute_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t?mutP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=67" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?mutP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=67" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?mutMF* | grep -v Rel) -l "volume=0 tune=0 lovel=68 hivel=106" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?mutMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=68 hivel=106" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?mutF* | grep -v Rel) -l "volume=0 tune=0 lovel=107 hivel=127" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?mutF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=107 hivel=127" >> $FILE



###  --------- ###
NAME="Trumpets Mute Sustain Mod"
FILE=Trumpets_Mute_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t?mutP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=52 xfout_hicc1=67" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?mutP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=52 xfout_hicc1=67" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?mutMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=53 xfin_hicc1=68 xfout_locc1=91 xfout_hicc1=106" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?mutMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=53 xfin_hicc1=68 xfout_locc1=91 xfout_hicc1=106" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?mutF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=92 xfin_hicc1=107" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?mutF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=92 xfin_hicc1=107" >> $FILE

############################################################
NAME="Trumpets Sforzando"
FILE=Trumpets_Sforzando.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Brass/t?sfz* -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE


###  --------- ###
NAME="Trumpets Sforzando Mod"
FILE=Trumpets_Sforzando_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Brass/t?sfz* -l "volume=0 tune=0" >> $FILE


############################################################
NAME="Trumpets Sustain"
FILE=Trumpets_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t?legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=61 hivel=93" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=93" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?legF-* | grep -v Rel) -l "volume=0 tune=0 lovel=94 hivel=114" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?legF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=94 hivel=114" >> $FILE
sfzgen.py -n15 -n18 $(ls Brass/t?legFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=115 hivel=127" >> $FILE
sfzgen.py -n15 -n18 $(ls Brass/t?legFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=115 hivel=127" >> $FILE



###  --------- ###
NAME="Trumpets Sustain Mod"
FILE=Trumpets_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t?legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=78 xfout_hicc1=93" >> $FILE
sfzgen.py -n 14 $(ls Brass/t?legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=78 xfout_hicc1=93" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?legF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=79 xfin_hicc1=94 xfout_locc1=99 xfout_hicc1=114" >> $FILE
sfzgen.py -n 13 $(ls Brass/t?legF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=79 xfin_hicc1=94 xfout_locc1=99 xfout_hicc1=114" >> $FILE
sfzgen.py -n15 -n18 $(ls Brass/t?legFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=100 xfin_hicc1=115" >> $FILE
sfzgen.py -n15 -n18 $(ls Brass/t?legFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=100 xfin_hicc1=115" >> $FILE

############################################################
NAME="Trumpets Staccato"
FILE=Trumpets_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?stcP* -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14 Brass/t?stcMF* -l "volume=0 tune=0 lovel=61 hivel=85" >> $FILE
sfzgen.py -n 13 Brass/t?stcF-* -l "volume=0 tune=0 lovel=86 hivel=109" >> $FILE
sfzgen.py -n 15 Brass/t?stcFFF-* -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE


###  --------- ###
NAME="Trumpets Staccato Mod"
FILE=Trumpets_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t?stcP* -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14 Brass/t?stcMF* -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=70 xfout_hicc1=85" >> $FILE
sfzgen.py -n 13 Brass/t?stcF-* -l "volume=0 tune=0 xfin_locc1=71 xfin_hicc1=86 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 15 Brass/t?stcFFF-* -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="French Horns Double Tongue"
FILE=French_Horns_Double_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/h6taP* -l "volume=0 tune=0 lovel=0 hivel=65" >> $FILE
sfzgen.py -n13 -n15 Brass/h6taMF* -l "volume=0 tune=0 lovel=66 hivel=101" >> $FILE
sfzgen.py -n12 -n14 Brass/h6taF* -l "volume=0 tune=0 lovel=102 hivel=127" >> $FILE


###  --------- ###
NAME="French Horns Double Tongue Mod"
FILE=French_Horns_Double_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/h6taP* -l "volume=0 tune=0 xfout_locc1=50 xfout_hicc1=65" >> $FILE
sfzgen.py -n13 -n15 Brass/h6taMF* -l "volume=0 tune=0 xfin_locc1=51 xfin_hicc1=66 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n12 -n14 Brass/h6taF* -l "volume=0 tune=0 xfin_locc1=87 xfin_hicc1=102" >> $FILE

############################################################
NAME="French Horns Flutter Tongue"
FILE=French_Horns_Flutter_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/h6fltMF* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=96" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6fltMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=96" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6fltFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=97 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6fltFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=97 hivel=127" >> $FILE




###  --------- ###
NAME="French Horns Flutter Tongue Mod"
FILE=French_Horns_Flutter_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/h6fltMF* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=81 xfout_hicc1=96" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6fltMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=81 xfout_hicc1=96" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6fltFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=82 xfin_hicc1=97" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6fltFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=82 xfin_hicc1=97" >> $FILE

############################################################
NAME="French Horns Marcato"
FILE=French_Horns_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/h6legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=65 hivel=93" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=65 hivel=93" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6marF-* | grep -v Rel) -l "volume=0 tune=0 lovel=94 hivel=115" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6marF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=94 hivel=115" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6marFF* | grep -v Rel) -l "volume=0 tune=0 lovel=116 hivel=127" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6marFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=116 hivel=127" >> $FILE



###  --------- ###
NAME="French Horns Marcato Mod"
FILE=French_Horns_Marcato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/h6legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=78 xfout_hicc1=93" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=78 xfout_hicc1=93" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6marF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=79 xfin_hicc1=94 xfout_locc1=100 xfout_hicc1=115" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6marF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=79 xfin_hicc1=94 xfout_locc1=100 xfout_hicc1=115" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6marFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=101 xfin_hicc1=116" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6marFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=101 xfin_hicc1=116" >> $FILE


############################################################
NAME="French Horns Mute Staccato"
FILE=French_Horns_Mute_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 Brass/h6stmMF* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n 13 Brass/h6stmF-* -l "volume=0 tune=0 lovel=65 hivel=106" >> $FILE
sfzgen.py -n 14 Brass/h6stmFF* -l "volume=0 tune=0 lovel=107 hivel=127" >> $FILE


###  --------- ###
NAME="French Horns Mute Staccato Mod"
FILE=French_Horns_Mute_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 Brass/h6stmMF* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n 13 Brass/h6stmF-* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=91 xfout_hicc1=106" >> $FILE
sfzgen.py -n 14 Brass/h6stmFF* -l "volume=0 tune=0 xfin_locc1=92 xfin_hicc1=107" >> $FILE

############################################################
NAME="French Horns Mute Sustain"
FILE=French_Horns_Mute_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/h6mutMF* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=100" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6mutMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=100" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6mutF* | grep -v Rel) -l "volume=0 tune=0 lovel=101 hivel=127" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6mutF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=101 hivel=127" >> $FILE



###  --------- ###
NAME="French Horns Mute Sustain Mod"
FILE=French_Horns_Mute_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/h6mutMF* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6mutMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6mutF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6mutF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101" >> $FILE

############################################################
NAME="French Horns Sforzando"
FILE=French_Horns_Sforzando.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 15 Brass/h6sfzFFF* -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE


###  --------- ###
NAME="French Horns Sforzando Mod"
FILE=French_Horns_Sforzando_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 15 Brass/h6sfzFFF* -l "volume=0 tune=0" >> $FILE

#

############################################################
NAME="French Horns Staccato"
FILE=French_Horns_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/h6stcP* -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14 Brass/h6stcMF* -l "volume=0 tune=0 lovel=61 hivel=85" >> $FILE
sfzgen.py -n 13 Brass/h6stcF-* -l "volume=0 tune=0 lovel=86 hivel=109" >> $FILE
sfzgen.py -n 15 Brass/h6stcFFF* -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE


###  --------- ###
NAME="French Horns Staccato Mod"
FILE=French_Horns_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/h6stcP* -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14 Brass/h6stcMF* -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=70 xfout_hicc1=85" >> $FILE
sfzgen.py -n 13 Brass/h6stcF-* -l "volume=0 tune=0 xfin_locc1=71 xfin_hicc1=86 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 15 Brass/h6stcFFF* -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="French Horns Sustain"
FILE=French_Horns_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/h6legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=63" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=63" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=64 hivel=82" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=64 hivel=82" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legF-* | grep -v Rel) -l "volume=0 tune=0 lovel=83 hivel=101" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=83 hivel=101" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6legFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=102 hivel=116" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6legFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=102 hivel=116" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6belFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=117 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6belFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=117 hivel=127" >> $FILE



###  --------- ###
NAME="French Horns Sustain Mod"
FILE=French_Horns_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/h6legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=48 xfout_hicc1=63" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=48 xfout_hicc1=63" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=49 xfin_hicc1=64 xfout_locc1=67 xfout_hicc1=82" >> $FILE
sfzgen.py -n 14 $(ls Brass/h6legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=49 xfin_hicc1=64 xfout_locc1=67 xfout_hicc1=82" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=68 xfin_hicc1=83 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n 13 $(ls Brass/h6legF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=68 xfin_hicc1=83 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6legFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=87 xfin_hicc1=102 xfout_locc1=101 xfout_hicc1=116" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6legFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=87 xfin_hicc1=102 xfout_locc1=101 xfout_hicc1=116" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6belFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=102 xfin_hicc1=117" >> $FILE
sfzgen.py -n 15 $(ls Brass/h6belFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=102 xfin_hicc1=117" >> $FILE

############################################################
NAME="Trombones Double Tongue"
FILE=Trombones_Double_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/b?taP* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n13 -n15 Brass/b?taMF* -l "volume=0 tune=0 lovel=65 hivel=100" >> $FILE
sfzgen.py -n12 -n14 Brass/b?taF* -l "volume=0 tune=0 lovel=101 hivel=127" >> $FILE




###  --------- ###
NAME="Trombones Double Tongue Mod"
FILE=Trombones_Double_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/b?taP* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n13 -n15 Brass/b?taMF* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n12 -n14 Brass/b?taF* -l "volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101" >> $FILE

############################################################
NAME="Trombones Flutter Tongue"
FILE=Trombones_Flutter_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/b?fltMF* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=99" >> $FILE
sfzgen.py -n 14 $(ls Brass/b?fltMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=99" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?fltF* | grep -v Rel) -l "volume=0 tune=0 lovel=100 hivel=127" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?fltF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=100 hivel=127" >> $FILE


###  --------- ###
NAME="Trombones Flutter Tongue Mod"
FILE=Trombones_Flutter_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/b?fltMF* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=84 xfout_hicc1=99" >> $FILE
sfzgen.py -n 14 $(ls Brass/b?fltMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=84 xfout_hicc1=99" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?fltF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=85 xfin_hicc1=100" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?fltF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=85 xfin_hicc1=100" >> $FILE

############################################################
NAME="Trombones Marcato"
FILE=Trombones_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/b?marF-* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=101" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?marF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=101" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?marFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=102 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?marFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=102 hivel=127" >> $FILE


###  --------- ###
NAME="Trombones Marcato Mod"
FILE=Trombones_Marcato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/b?marF-* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?marF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?marFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=87 xfin_hicc1=102" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?marFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=87 xfin_hicc1=103" >> $FILE

############################################################
NAME="Trombones Mute Staccato"
FILE=Trombones_Mute_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/b?stmP* -l "volume=0 tune=0 lovel=0 hivel=70" >> $FILE
sfzgen.py -n 14 Brass/b?stmMF* -l "volume=0 tune=0 lovel=71 hivel=110" >> $FILE
sfzgen.py -n 13 Brass/b?stmF* -l "volume=0 tune=0 lovel=111 hivel=127" >> $FILE


###  --------- ###
NAME="Trombones Mute Staccato Mod"
FILE=Trombones_Mute_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/b?stmP* -l "volume=0 tune=0 xfout_locc1=55 xfout_hicc1=70" >> $FILE
sfzgen.py -n 14 Brass/b?stmMF* -l "volume=0 tune=0 xfin_locc1=56 xfin_hicc1=71 xfout_locc1=95 xfout_hicc1=110" >> $FILE
sfzgen.py -n 13 Brass/b?stmF* -l "volume=0 tune=0 xfin_locc1=96 xfin_hicc1=111" >> $FILE

############################################################
NAME="Trombones Mute Sustain"
FILE=Trombones_Mute_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/b?mutP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=74" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?mutP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=74" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?mutF-* | grep -v Rel) -l "volume=0 tune=0 lovel=75 hivel=105" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?mutF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=75 hivel=105" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?mutFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=106 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?mutFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=106 hivel=127" >> $FILE



###  --------- ###
NAME="Trombones Mute Sustain Mod"
FILE=Trombones_Mute_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/b?mutP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=59 xfout_hicc1=74" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?mutP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=59 xfout_hicc1=74" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?mutF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=60 xfin_hicc1=75 xfout_locc1=90 xfout_hicc1=105" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?mutF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=60 xfin_hicc1=75 xfout_locc1=90 xfout_hicc1=105" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?mutFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=91 xfin_hicc1=106" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?mutFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=91 xfin_hicc1=106" >> $FILE

############################################################
NAME="Trombones Sforzando"
FILE=Trombones_Sforzando.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Brass/b?sfz* -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE


###  --------- ###
NAME="Trombones Sforzando Mod"
FILE=Trombones_Sforzando_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 12 Brass/b?sfz* -l "volume=0 tune=0 xfout_locc1=112 xfout_hicc1=127" >> $FILE

############################################################
NAME="Trombones Staccato"
FILE=Trombones_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/b?stcP* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n 14 Brass/b?stcMF* -l "volume=0 tune=0 lovel=65 hivel=89" >> $FILE
sfzgen.py -n 13 Brass/b?stcF-* -l "volume=0 tune=0 lovel=90 hivel=110" >> $FILE
sfzgen.py -n 15 Brass/b?stcFFF-* -l "volume=0 tune=0 lovel=111 hivel=127" >> $FILE


###  --------- ###
NAME="Trombones Staccato Mod"
FILE=Trombones_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/b?stcP* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n 14 Brass/b?stcMF* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=74 xfout_hicc1=89" >> $FILE
sfzgen.py -n 13 Brass/b?stcF-* -l "volume=0 tune=0 xfin_locc1=75 xfin_hicc1=90 xfout_locc1=95 xfout_hicc1=110" >> $FILE
sfzgen.py -n 15 Brass/b?stcFFF-* -l "volume=0 tune=0 xfin_locc1=96 xfin_hicc1=111" >> $FILE

############################################################
NAME="Trombones Sustain"
FILE=Trombones_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/b?legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=65" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=65" >> $FILE
sfzgen.py -n 14 $(ls Brass/b?legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=66 hivel=87" >> $FILE
sfzgen.py -n 14 $(ls Brass/b?legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=66 hivel=87" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?legF-* | grep -v Rel) -l "volume=0 tune=0 lovel=88 hivel=111" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?legF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=88 hivel=111" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?legFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=112 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?legFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=112 hivel=127" >> $FILE



###  --------- ###
NAME="Trombones Sustain Mod"
FILE=Trombones_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/b?legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=50 xfout_hicc1=65" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=50 xfout_hicc1=65" >> $FILE
sfzgen.py -n 14 $(ls Brass/b?legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=51 xfin_hicc1=66 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n 14 $(ls Brass/b?legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=51 xfin_hicc1=66 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?legF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88 xfout_locc1=96 xfout_hicc1=111" >> $FILE
sfzgen.py -n 13 $(ls Brass/b?legF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88 xfout_locc1=96 xfout_hicc1=111" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?legFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=97 xfin_hicc1=112" >> $FILE
sfzgen.py -n 15 $(ls Brass/b?legFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=97 xfin_hicc1=112" >> $FILE

############################################################
NAME="Tuba Marcato"
FILE=Tuba_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/tbcmar* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE
sfzgen.py -n 13 $(ls Brass/tbcmar* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=127" >> $FILE



###  --------- ###
NAME="Tuba Marcato Mod"
FILE=Tuba_Marcato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/tbcmar* | grep -v Rel) -l "volume=0 tune=0" >> $FILE
sfzgen.py -n 13 $(ls Brass/tbcmar* | grep Rel) -l "trigger=release volume=0" >> $FILE


############################################################
NAME="Tuba Sforzando"
FILE=Tuba_Sforzando.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/tbcsfz* -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE


###  --------- ###
NAME="Tuba Sforzando Mod"
FILE=Tuba_Sforzando_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/tbcsfz* -l "volume=0 tune=0" >> $FILE

############################################################
NAME="Tuba Staccato"
FILE=Tuba_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 Brass/tbcstcP* -l "volume=0 tune=0 lovel=0 hivel=70" >> $FILE
sfzgen.py -n 15 Brass/tbcstcMF* -l "volume=0 tune=0 lovel=71 hivel=90" >> $FILE
sfzgen.py -n 14 Brass/tbcstcF-* -l "volume=0 tune=0 lovel=91 hivel=109" >> $FILE
sfzgen.py -n 16 Brass/tbcstcFFF* -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE


###  --------- ###
NAME="Tuba Staccato Mod"
FILE=Tuba_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 Brass/tbcstcP* -l "volume=0 tune=0 xfout_locc1=55 xfout_hicc1=70" >> $FILE
sfzgen.py -n 15 Brass/tbcstcMF* -l "volume=0 tune=0 xfin_locc1=56 xfin_hicc1=71 xfout_locc1=75 xfout_hicc1=90" >> $FILE
sfzgen.py -n 14 Brass/tbcstcF-* -l "volume=0 tune=0 xfin_locc1=76 xfin_hicc1=91 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 16 Brass/tbcstcFFF* -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Tuba Sustain"
FILE=Tuba_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/tbclegP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=68" >> $FILE
sfzgen.py -n 14 $(ls Brass/tbclegP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=68" >> $FILE
sfzgen.py -n 15 $(ls Brass/tbclegMF* | grep -v Rel) -l "volume=0 tune=0 lovel=69 hivel=95" >> $FILE
sfzgen.py -n 15 $(ls Brass/tbclegMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=69 hivel=95" >> $FILE
sfzgen.py -n 14 $(ls Brass/tbclegF-* | grep -v Rel) -l "volume=0 tune=0 lovel=96 hivel=115" >> $FILE
sfzgen.py -n 14 $(ls Brass/tbclegF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=96 hivel=115" >> $FILE
sfzgen.py -n 16 $(ls Brass/tbclegFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=116 hivel=127" >> $FILE
sfzgen.py -n 16 $(ls Brass/tbclegFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=116 hivel=127" >> $FILE


###  --------- ###
NAME="Tuba Sustain Mod"
FILE=Tuba_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 14 $(ls Brass/tbclegP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=53 xfout_hicc1=68" >> $FILE
sfzgen.py -n 14 $(ls Brass/tbclegP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=53 xfout_hicc1=68" >> $FILE
sfzgen.py -n 15 $(ls Brass/tbclegMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=54 xfin_hicc1=69 xfout_locc1=80 xfout_hicc1=95" >> $FILE
sfzgen.py -n 15 $(ls Brass/tbclegMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=54 xfin_hicc1=69 xfout_locc1=80 xfout_hicc1=95" >> $FILE
sfzgen.py -n 14 $(ls Brass/tbclegF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=81 xfin_hicc1=96 xfout_locc1=100 xfout_hicc1=115" >> $FILE
sfzgen.py -n 14 $(ls Brass/tbclegF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=81 xfin_hicc1=96 xfout_locc1=100 xfout_hicc1=115" >> $FILE
sfzgen.py -n 16 $(ls Brass/tbclegFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=101 xfin_hicc1=116" >> $FILE
sfzgen.py -n 16 $(ls Brass/tbclegFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=101 xfin_hicc1=116" >> $FILE

############################################################
NAME="Solo Trumpet Double Tongue"
FILE=Solo_Trumpet_Double_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/t1taP* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n13 -n15 Brass/t1taMF* -l "volume=0 tune=0 lovel=65 hivel=101" >> $FILE
sfzgen.py -n12 -n14 Brass/t1taF* -l "volume=0 tune=0 lovel=102 hivel=127" >> $FILE




###  --------- ###
NAME="Solo Trumpet Double Tongue Mod"
FILE=Solo_Trumpet_Double_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/t1taP* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n13 -n15 Brass/t1taMF* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=86 xfout_hicc1=101" >> $FILE
sfzgen.py -n12 -n14 Brass/t1taF* -l "volume=0 tune=0 xfin_locc1=87 xfin_hicc1=102" >> $FILE

############################################################
NAME="Solo Trumpet Marcato"
FILE=Solo_Trumpet_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t1legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=56" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=56" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=57 hivel=86" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=57 hivel=86" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1marMF* | grep -v Rel) -l "volume=0 tune=0 lovel=87 hivel=112" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1marMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=87 hivel=112" >> $FILE
sfzgen.py -n 15 $(ls Brass/t1marFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=113 hivel=127" >> $FILE
sfzgen.py -n 15 $(ls Brass/t1marFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=113 hivel=127" >> $FILE



###  --------- ###
NAME="Solo Trumpet Marcato Mod"
FILE=Solo_Trumpet_Marcato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t1legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=41 xfout_hicc1=56" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=41 xfout_hicc1=56" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=42 xfin_hicc1=57 xfout_locc1=71 xfout_hicc1=86" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=42 xfin_hicc1=57 xfout_locc1=71 xfout_hicc1=86" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1marMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=72 xfin_hicc1=87 xfout_locc1=97 xfout_hicc1=112" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1marMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=72 xfin_hicc1=87 xfout_locc1=97 xfout_hicc1=112" >> $FILE
sfzgen.py -n 15 $(ls Brass/t1marFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=98 xfin_hicc1=113" >> $FILE
sfzgen.py -n 15 $(ls Brass/t1marFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=98 xfin_hicc1=113" >> $FILE

############################################################
NAME="Solo Trumpet Staccato"
FILE=Solo_Trumpet_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t1stcP-* -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14 Brass/t1stcMF-* -l "volume=0 tune=0 lovel=61 hivel=85" >> $FILE
sfzgen.py -n 13 Brass/t1stcF-* -l "volume=0 tune=0 lovel=86 hivel=109" >> $FILE
sfzgen.py -n 15 Brass/t1stcFFF-* -l "volume=0 tune=0 lovel=110 hivel=127" >> $FILE




###  --------- ###
NAME="Solo Trumpet Staccato Mod"
FILE=Solo_Trumpet_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 Brass/t1stcP-* -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14 Brass/t1stcMF-* -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=70 xfout_hicc1=85" >> $FILE
sfzgen.py -n 13 Brass/t1stcF-* -l "volume=0 tune=0 xfin_locc1=71 xfin_hicc1=86 xfout_locc1=94 xfout_hicc1=109" >> $FILE
sfzgen.py -n 15 Brass/t1stcFFF-* -l "volume=0 tune=0 xfin_locc1=95 xfin_hicc1=110" >> $FILE

############################################################
NAME="Solo Trumpet Sustain"
FILE=Solo_Trumpet_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t1legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=61 hivel=93" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=93" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legF-* | grep -v Rel) -l "volume=0 tune=0 lovel=94 hivel=114" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=94 hivel=114" >> $FILE
sfzgen.py -n 15 -n18 $(ls Brass/t1legFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=115 hivel=127" >> $FILE
sfzgen.py -n 15 -n18 $(ls Brass/t1legFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=115 hivel=127" >> $FILE



###  --------- ###
NAME="Solo Trumpet Sustain Mod"
FILE=Solo_Trumpet_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n 13 $(ls Brass/t1legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=78 xfout_hicc1=93" >> $FILE
sfzgen.py -n 14 $(ls Brass/t1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=78 xfout_hicc1=93" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=79 xfin_hicc1=94 xfout_locc1=99 xfout_hicc1=114" >> $FILE
sfzgen.py -n 13 $(ls Brass/t1legF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=79 xfin_hicc1=94 xfout_locc1=99 xfout_hicc1=114" >> $FILE
sfzgen.py -n 15 -n18 $(ls Brass/t1legFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=100 xfin_hicc1=115" >> $FILE
sfzgen.py -n 15 -n18 $(ls Brass/t1legFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=100 xfin_hicc1=115" >> $FILE

############################################################
NAME="Solo French Horn Marcato"
FILE=Solo_French_Horn_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n14 $(ls Brass/shrnmrc* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE
sfzgen.py -n14 $(ls Brass/shrnmrc* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=127" >> $FILE



###  --------- ###
NAME="Solo French Horn Marcato Mod"
FILE=Solo_French_Horn_Marcato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n14 $(ls Brass/shrnmrc* | grep -v Rel) -l "volume=0 tune=0" >> $FILE
sfzgen.py -n14 $(ls Brass/shrnmrc* | grep Rel) -l "trigger=release volume=0 tune=0 " >> $FILE

############################################################
NAME="Solo French Horn Staccato"
FILE=Solo_French_Horn_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 Brass/shstcP* -l "volume=0 tune=0 lovel=0 hivel=63" >> $FILE
sfzgen.py -n14 Brass/shstcMF* -l "volume=0 tune=0 lovel=64 hivel=89" >> $FILE
sfzgen.py -n13 Brass/shstcF-* -l "volume=0 tune=0 lovel=90 hivel=114" >> $FILE
sfzgen.py -n15 Brass/shstcFFF-* -l "volume=0 tune=0 lovel=115 hivel=127" >> $FILE


###  --------- ###
NAME="Solo French Horn Staccato Mod"
FILE=Solo_French_Horn_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 Brass/shstcP* -l "volume=0 tune=0 xfout_locc1=48 xfout_hicc1=63" >> $FILE
sfzgen.py -n14 Brass/shstcMF* -l "volume=0 tune=0 xfin_locc1=49 xfin_hicc1=64 xfout_locc1=74 xfout_hicc1=89" >> $FILE
sfzgen.py -n13 Brass/shstcF-* -l "volume=0 tune=0 xfin_locc1=75 xfin_hicc1=90 xfout_locc1=99 xfout_hicc1=114" >> $FILE
sfzgen.py -n15 Brass/shstcFFF-* -l "volume=0 tune=0 xfin_locc1=100 xfin_hicc1=115" >> $FILE

############################################################
NAME="Solo French Horn Sustain"
FILE=Solo_French_Horn_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/shlegP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=69" >> $FILE
sfzgen.py -n13 $(ls Brass/shlegP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=69" >> $FILE
sfzgen.py -n14 $(ls Brass/shlegMF* | grep -v Rel) -l "volume=0 tune=0 lovel=70 hivel=100" >> $FILE
sfzgen.py -n14 $(ls Brass/shlegMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=70 hivel=100" >> $FILE
sfzgen.py -n13 $(ls Brass/shlegF-* | grep -v Rel) -l "volume=0 tune=0 lovel=101 hivel=120" >> $FILE
sfzgen.py -n13 $(ls Brass/shlegF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=101 hivel=120" >> $FILE
sfzgen.py -n15 $(ls Brass/shlegFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=121 hivel=127" >> $FILE
sfzgen.py -n15 $(ls Brass/shlegFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=121 hivel=127" >> $FILE

###  --------- ###
NAME="Solo French Horn Sustain Mod"
FILE=Solo_French_Horn_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/shlegP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=54 xfout_hicc1=69" >> $FILE
sfzgen.py -n13 $(ls Brass/shlegP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=54 xfout_hicc1=69" >> $FILE
sfzgen.py -n14 $(ls Brass/shlegMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=55 xfin_hicc1=70 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n14 $(ls Brass/shlegMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=55 xfin_hicc1=70 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n13 $(ls Brass/shlegF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101 xfout_locc1=105 xfout_hicc1=120" >> $FILE
sfzgen.py -n13 $(ls Brass/shlegF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101 xfout_locc1=105 xfout_hicc1=120" >> $FILE
sfzgen.py -n15 $(ls Brass/shlegFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=106 xfin_hicc1=121" >> $FILE
sfzgen.py -n 15 $(ls Brass/shlegFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=106 xfin_hicc1=121" >> $FILE

############################################################
NAME="Solo Bass Trombone Double Tongue"
FILE=Solo_Bass_Trombone_Double_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/b1taP* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n13 -n15 Brass/b1taMF* -l "volume=0 tune=0 lovel=65 hivel=100" >> $FILE
sfzgen.py -n12 -n14 Brass/b1taF* -l "volume=0 tune=0 lovel=101 hivel=127" >> $FILE



###  --------- ###
NAME="Solo Bass Trombone Double Tongue Mod"
FILE=Solo_Bass_Trombone_Double_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 -n14 Brass/b1taP* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n13 -n15 Brass/b1taMF* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=85 xfout_hicc1=100" >> $FILE
sfzgen.py -n12 -n14 Brass/b1taF* -l "volume=0 tune=0 xfin_locc1=86 xfin_hicc1=101" >> $FILE

############################################################
NAME="Solo Bass Trombone Flutter Tongue"
FILE=Solo_Bass_Trombone_Flutter_Tongue.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n14 $(ls Brass/b1fltMF* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=99" >> $FILE
sfzgen.py -n14 $(ls Brass/b1fltMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=99" >> $FILE
sfzgen.py -n13 $(ls Brass/b1fltF* | grep -v Rel) -l "volume=0 tune=0 lovel=100 hivel=127" >> $FILE
sfzgen.py -n13 $(ls Brass/b1fltF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=100 hivel=127" >> $FILE

###  --------- ###
NAME="Solo Bass Trombone Flutter Tongue Mod"
FILE=Solo_Bass_Trombone_Flutter_Tongue_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n14 $(ls Brass/b1fltMF* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=84 xfout_hicc1=99" >> $FILE
sfzgen.py -n14 $(ls Brass/b1fltMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=84 xfout_hicc1=99" >> $FILE
sfzgen.py -n13 $(ls Brass/b1fltF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=85 xfin_hicc1=100" >> $FILE
sfzgen.py -n 13 $(ls Brass/b1fltF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=85 xfin_hicc1=100" >> $FILE

############################################################
NAME="Solo Bass Trombone Marcato"
FILE=Solo_Bass_Trombone_Marcato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/b1legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=60" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=61 hivel=87" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=61 hivel=87" >> $FILE
sfzgen.py -n13 $(ls Brass/b1marF-* | grep -v Rel) -l "volume=0 tune=0 lovel=88 hivel=112" >> $FILE
sfzgen.py -n13 $(ls Brass/b1marF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=88 hivel=112" >> $FILE
sfzgen.py -n15 $(ls Brass/b1marFFF* | grep -v Rel) -l "volume=0 tune=0 lovel=113 hivel=127" >> $FILE
sfzgen.py -n15 $(ls Brass/b1marFFF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=113 hivel=127" >> $FILE

###  --------- ###
NAME="Solo Bass Trombone Marcato Mod"
FILE=Solo_Bass_Trombone_Marcato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/b1legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=45 xfout_hicc1=60" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=46 xfin_hicc1=61 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n13 $(ls Brass/b1marF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88 xfout_locc1=97 xfout_hicc1=112" >> $FILE
sfzgen.py -n13 $(ls Brass/b1marF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88 xfout_locc1=97 xfout_hicc1=112" >> $FILE
sfzgen.py -n15 $(ls Brass/b1marFFF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=98 xfin_hicc1=113" >> $FILE
sfzgen.py -n 15 $(ls Brass/b1marFFF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=98 xfin_hicc1=113" >> $FILE


############################################################
NAME="Solo Bass Trombone Mute Staccato"
FILE=Solo_Bass_Trombone_Mute_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 Brass/b1stmP* -l "volume=0 tune=0 lovel=0 hivel=70" >> $FILE
sfzgen.py -n14 Brass/b1stmMF* -l "volume=0 tune=0 lovel=71 hivel=110" >> $FILE
sfzgen.py -n13 Brass/b1stmF* -l "volume=0 tune=0 lovel=111 hivel=127" >> $FILE


###  --------- ###
NAME="Solo Bass Trombone Mute Staccato Mod"
FILE=Solo_Bass_Trombone_Mute_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 Brass/b1stmP* -l "volume=0 tune=0 xfout_locc1=55 xfout_hicc1=70" >> $FILE
sfzgen.py -n14 Brass/b1stmMF* -l "volume=0 tune=0 xfin_locc1=56 xfin_hicc1=71 xfout_locc1=95 xfout_hicc1=110" >> $FILE
sfzgen.py -n13 Brass/b1stmF* -l "volume=0 tune=0 xfin_locc1=96 xfin_hicc1=111" >> $FILE


############################################################
NAME="Solo Bass Trombone Mute Sustain"
FILE=Solo_Bass_Trombone_Mute_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/b1mutP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=74" >> $FILE
sfzgen.py -n13 $(ls Brass/b1mutP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=74" >> $FILE
sfzgen.py -n13 $(ls Brass/b1mutF-* | grep -v Rel) -l "volume=0 tune=0 lovel=75 hivel=105" >> $FILE
sfzgen.py -n13 $(ls Brass/b1mutF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=75 hivel=105" >> $FILE
sfzgen.py -n15 $(ls Brass/b1mutFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=106 hivel=127" >> $FILE
sfzgen.py -n15 $(ls Brass/b1mutFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=106 hivel=127" >> $FILE

###  --------- ###
NAME="Solo Bass Trombone Mute Sustain Mod"
FILE=Solo_Bass_Trombone_Mute_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/b1mutP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=59 xfout_hicc1=74" >> $FILE
sfzgen.py -n13 $(ls Brass/b1mutP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=59 xfout_hicc1=74" >> $FILE
sfzgen.py -n13 $(ls Brass/b1mutF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=60 xfin_hicc1=75 xfout_locc1=90 xfout_hicc1=105" >> $FILE
sfzgen.py -n13 $(ls Brass/b1mutF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=60 xfin_hicc1=75 xfout_locc1=90 xfout_hicc1=105" >> $FILE
sfzgen.py -n15 $(ls Brass/b1mutFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=91 xfin_hicc1=106" >> $FILE
sfzgen.py -n 15 $(ls Brass/b1mutFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=91 xfin_hicc1=106" >> $FILE


############################################################
NAME="Solo Bass Trombone Sforzando"
FILE=Solo_Bass_Trombone_Sforzando.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 Brass/b1sfz* -l "volume=0 tune=0 lovel=0 hivel=127" >> $FILE


###  --------- ###
NAME="Solo Bass Trombone Sforzando Mod"
FILE=Solo_Bass_Trombone_Sforzando_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n12 Brass/b1sfz* -l "volume=0 tune=0 xfout_locc1=112 xfout_hicc1=127" >> $FILE

############################################################
NAME="Solo Bass Trombone Staccato"
FILE=Solo_Bass_Trombone_Staccato.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 Brass/b1stcP* -l "volume=0 tune=0 lovel=0 hivel=64" >> $FILE
sfzgen.py -n14 Brass/b1stcMF* -l "volume=0 tune=0 lovel=65 hivel=89" >> $FILE
sfzgen.py -n13 Brass/b1stcF-* -l "volume=0 tune=0 lovel=90 hivel=110" >> $FILE
sfzgen.py -n15 Brass/b1stcFFF-* -l "volume=0 tune=0 lovel=111 hivel=127" >> $FILE

###  --------- ###
NAME="Solo Bass Trombone Staccato Mod"
FILE=Solo_Bass_Trombone_Staccato_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 Brass/b1stcP* -l "volume=0 tune=0 xfout_locc1=49 xfout_hicc1=64" >> $FILE
sfzgen.py -n14 Brass/b1stcMF* -l "volume=0 tune=0 xfin_locc1=50 xfin_hicc1=65 xfout_locc1=74 xfout_hicc1=89" >> $FILE
sfzgen.py -n13 Brass/b1stcF-* -l "volume=0 tune=0 xfin_locc1=75 xfin_hicc1=90 xfout_locc1=95 xfout_hicc1=110" >> $FILE
sfzgen.py -n15 Brass/b1stcFFF-* -l "volume=0 tune=0 xfin_locc1=96 xfin_hicc1=111" >> $FILE

############################################################
NAME="Solo Bass Trombone Sustain"
FILE=Solo_Bass_Trombone_Sustain.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=10
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/b1legP* | grep -v Rel) -l "volume=0 tune=0 lovel=0 hivel=65" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legP* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=0 hivel=65" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep -v Rel) -l "volume=0 tune=0 lovel=66 hivel=87" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=66 hivel=87" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legF-* | grep -v Rel) -l "volume=0 tune=0 lovel=88 hivel=111" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=88 hivel=111" >> $FILE
sfzgen.py -n15 $(ls Brass/b1legFFF-* | grep -v Rel) -l "volume=0 tune=0 lovel=112 hivel=127" >> $FILE
sfzgen.py -n15 $(ls Brass/b1legFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 lovel=112 hivel=127" >> $FILE

###  --------- ###
NAME="Solo Bass Trombone Sustain Mod"
FILE=Solo_Bass_Trombone_Sustain_Mod.sfz
echo $NAME
cat << EOF > $FILE
// $NAME
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=2
set_cc72=10
<global>
amp_veltrack=0
volume_oncc1=-24
volume_curvecc1=2
xf_cccurve=power
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005
EOF

sfzgen.py -n13 $(ls Brass/b1legP* | grep -v Rel) -l "volume=0 tune=0 xfout_locc1=50 xfout_hicc1=65" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legP* | grep Rel) -l "trigger=release volume=0 tune=0 xfout_locc1=50 xfout_hicc1=65" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=51 xfin_hicc1=66 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n14 $(ls Brass/b1legMF* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=51 xfin_hicc1=66 xfout_locc1=72 xfout_hicc1=87" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88 xfout_locc1=96 xfout_hicc1=111" >> $FILE
sfzgen.py -n13 $(ls Brass/b1legF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=73 xfin_hicc1=88 xfout_locc1=96 xfout_hicc1=111" >> $FILE
sfzgen.py -n15 $(ls Brass/b1legFFF-* | grep -v Rel) -l "volume=0 tune=0 xfin_locc1=97 xfin_hicc1=112" >> $FILE
sfzgen.py -n 15 $(ls Brass/b1legFFF-* | grep Rel) -l "trigger=release volume=0 tune=0 xfin_locc1=97 xfin_hicc1=112" >> $FILE
