#!/bin/bash
echo Cello Stac
cat << EOCT > cello_staccato.sfz
// Cello Staccato
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOCT
cd Cello
sfzgen.py clst -p Cello -l "volume=0 tune=0" >> ../cello_staccato.sfz
cd -

echo Cello Piz
cat << EOCZ > cello_pizzicato.sfz
// Cello Pizzicato
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOCZ
cd Cello
sfzgen.py clpz -p Cello -l "volume=0 tune=0" >> ../cello_pizzicato.sfz
cd -

echo Cello Spic
cat << EOCS > cello_spiccato.sfz
// Cello Spiccato
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOCS
cd Cello
sfzgen.py clsp -e clspn -p Cello -l "volume=0 tune=0" >> ../cello_spiccato.sfz
cd -


echo Violin Staccato
cat << EOVS > violin_staccato.sfz
// Violin Staccato
<control>
label_cc73=Attack
label_cc72=Release
set_cc73=0
set_cc72=25
<global>
ampeg_attack_oncc73=10
ampeg_release_oncc72=10
ampeg_decay=0.005

EOVS
cd Violin
sfzgen.py v1stn -p Violin -l "volume=0 tune=0" >> ../violin_staccato.sfz
cd -

NAME='Violin Spiccato'
DIR=Violin
FILE=violin_spiccato.sfz
PREFIX=vl1sp
echo $NAME
cat << EOF4 > $FILE
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

EOF4
cd $DIR
sfzgen.py $PREFIX -p $DIR -l "volume=0 tune=0" >> ../$FILE
cd -

NAME='Contra Bass Staccato'
DIR=ContraBass
FILE=ContraBass_Staccato.sfz
PREFIX=bsst
echo $NAME
cat << EOF4 > $FILE
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

EOF4
cd $DIR
sfzgen.py $PREFIX -p $DIR -l "volume=0 tune=0" >> ../$FILE
cd -

