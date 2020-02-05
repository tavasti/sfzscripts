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


