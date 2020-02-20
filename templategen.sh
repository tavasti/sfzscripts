#!/bin/bash

if [ $# -lt 4 ]; then
	echo "usage: $0 'Cello Staccato' 'Cello/clst1*' lovel hivel [-r]"
	exit 1
fi

name="$1"
patt="$2"
lovel=$3
hivel=$4
REL=0
if [ $# -gt 4 ]; then 
	if [ $5 == '-r' ] ; then REL=1; fi
fi

# Check that we see samples
count=$(ls $patt | wc -l)
if [ $count -lt 5 ] ; then
	echo "Got only $count files, check your pattern" >&2
	exit 2
fi
# from pattern check where is first wildcard. Note location can't be before it

noteloc=1; while [ "${patt:$noteloc:1}" != '*' ] && [ "${patt:$noteloc:1}" != '?' ];
    do noteloc=$(($noteloc+1)) ; done
noteloc=$(($noteloc-1))
# Find where is note location
c=0; while [ $c -lt 10 ] && [ $noteloc -lt 99 ]; do noteloc=$(($noteloc+1));c=$(sfzgen.py -i -n $noteloc $patt -l "kukkuu" 2>/dev/null | wc -l ); done
sfzgen.py -i -n $noteloc $patt -l "kukkuu" > /dev/null

file=$(echo $name | sed 's/ /_/g').sfz
if [ $lovel -eq 0 ] ; then 
	cat <<- ENDOF
	
	############################################################
	NAME="$name"
	FILE=$file
	echo \$NAME
	cat << EOF > \$FILE
	// \$NAME
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
	
ENDOF
fi

if [ $REL -eq 0 ] ; then
	FILES="$patt"
	FILES2=""
else
	FILES="\$(ls $patt | grep -v Rel)"
	FILES2="\$(ls $patt | grep Rel)"
fi

echo "sfzgen.py -n$noteloc $FILES -l \"volume=0 tune=0 lovel=$lovel hivel=$hivel\" >> \$FILE"
[ "$FILES2" ] && echo "sfzgen.py -n$noteloc $FILES2 -l \"trigger=release volume=0 tune=0 lovel=$lovel hivel=$hivel\" >> \$FILE"
cat <<- ENDOF


ENDOF

file=$(echo $name | sed 's/ /_/g')_Mod.sfz
if [ $lovel -eq 0 ] ; then 
	cat <<- ENDOF
	
	###  --------- ###
	NAME="$name Mod"
	FILE=$file
	echo \$NAME
	cat << EOF > \$FILE
	// \$NAME
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
	
ENDOF
fi

inlow=$(($lovel-15))
outlow=$(($hivel-15))

if [ $lovel -eq 0 ] ; then 
	echo "sfzgen.py -n$noteloc $FILES -l \"volume=0 tune=0 xfout_locc1=$outlow xfout_hicc1=$hivel\" >> \$FILE"
	[ "$FILES2" ] && echo "sfzgen.py -n$noteloc $FILES2 -l \"trigger=release volume=0 tune=0 xfout_locc1=$outlow xfout_hicc1=$hivel\" >> \$FILE"
else if [ $hivel -eq 127 ] ; then 
	echo "sfzgen.py -n$noteloc $FILES -l \"volume=0 tune=0 xfin_locc1=$inlow xfin_hicc1=$lovel\" >> \$FILE"
	[ "$FILES2" ] && echo "sfzgen.py -n $noteloc $FILES2 -l \"trigger=release volume=0 tune=0 xfin_locc1=$inlow xfin_hicc1=$lovel\" >> \$FILE"
     else
	echo "sfzgen.py -n$noteloc $FILES -l \"volume=0 tune=0 xfin_locc1=$inlow xfin_hicc1=$lovel xfout_locc1=$outlow xfout_hicc1=$hivel\" >> \$FILE"
	[ "$FILES2" ] && echo "sfzgen.py -n$noteloc $FILES2 -l \"trigger=release volume=0 tune=0 xfin_locc1=$inlow xfin_hicc1=$lovel xfout_locc1=$outlow xfout_hicc1=$hivel\" >> \$FILE"
     fi
fi

echo "#"
