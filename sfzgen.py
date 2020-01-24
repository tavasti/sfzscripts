#!/usr/bin/python3

import sys
import os
import math
import argparse

def GetNote(str):
    if(str.startswith('c1')):
        return 24
    if(str.startswith('cs1')):
        return 25
    if(str.startswith('d1')):
        return 26
    if(str.startswith('ds1')):
        return 27
    if(str.startswith('e1')):
        return 28
    if(str.startswith('f1')):
        return 29
    if(str.startswith('fs1')):
        return 30
    if(str.startswith('g1')):
        return 31
    if(str.startswith('gs1')):
        return 32
    if(str.startswith('a1')):
        return 33
    if(str.startswith('as1')):
        return 34
    if(str.startswith('b1')):
        return 35
    if(str.startswith('c2')):
        return 36
    if(str.startswith('cs2')):
        return 37
    if(str.startswith('d2')):
        return 38
    if(str.startswith('ds2')):
        return 39
    if(str.startswith('e2')):
        return 40
    if(str.startswith('f2')):
        return 41
    if(str.startswith('fs2')):
        return 42
    if(str.startswith('g2')):
        return 43
    if(str.startswith('gs2')):
        return 44
    if(str.startswith('a2')):
        return 45
    if(str.startswith('as2')):
        return 46
    if(str.startswith('b2')):
        return 47
    if(str.startswith('c3')):
        return 48
    if(str.startswith('cs3')):
        return 49
    if(str.startswith('d3')):
        return 50
    if(str.startswith('ds3')):
        return 51
    if(str.startswith('e3')):
        return 52
    if(str.startswith('f3')):
        return 53
    if(str.startswith('fs3')):
        return 54
    if(str.startswith('g3')):
        return 55
    if(str.startswith('gs3')):
        return 56
    if(str.startswith('a3')):
        return 57
    if(str.startswith('as3')):
        return 58
    if(str.startswith('b3')):
        return 59
    if(str.startswith('c4')):
        return 60
    if(str.startswith('cs4')):
        return 61
    if(str.startswith('d4')):
        return 62
    if(str.startswith('ds4')):
        return 63
    if(str.startswith('e4')):
        return 64
    if(str.startswith('f4')):
        return 65
    if(str.startswith('fs4')):
        return 66
    if(str.startswith('g4')):
        return 67
    if(str.startswith('gs4')):
        return 68
    if(str.startswith('a4')):
        return 69
    if(str.startswith('as4')):
        return 70
    if(str.startswith('b4')):
        return 71
    if(str.startswith('c5')):
        return 72
    if(str.startswith('cs5')):
        return 73
    if(str.startswith('d5')):
        return 74
    if(str.startswith('ds5')):
        return 75
    if(str.startswith('e5')):
        return 76
    if(str.startswith('f5')):
        return 77
    if(str.startswith('fs5')):
        return 78
    if(str.startswith('g5')):
        return 79
    if(str.startswith('gs5')):
        return 80
    if(str.startswith('a5')):
        return 81
    if(str.startswith('as5')):
        return 82
    if(str.startswith('b5')):
        return 83
    if(str.startswith('c6')):
        return 84
    if(str.startswith('cs6')):
        return 85
    if(str.startswith('d6')):
        return 86
    if(str.startswith('ds6')):
        return 87
    if(str.startswith('e6')):
        return 88
    if(str.startswith('f6')):
        return 89
    if(str.startswith('fs6')):
        return 90
    if(str.startswith('g6')):
        return 91
    if(str.startswith('gs6')):
        return 92
    if(str.startswith('a6')):
        return 93
    if(str.startswith('as6')):
        return 94
    if(str.startswith('b6')):
        return 95
    if(str.startswith('c7')):
        return 96
    if(str.startswith('cs7')):
        return 97
    if(str.startswith('d7')):
        return 98
    if(str.startswith('ds7')):
        return 99
    if(str.startswith('e7')):
        return 100
    if(str.startswith('f7')):
        return 101
    if(str.startswith('fs7')):
        return 102
    if(str.startswith('g7')):
        return 103
    if(str.startswith('gs7')):
        return 104
    if(str.startswith('a7')):
        return 105
    if(str.startswith('as7')):
        return 106
    if(str.startswith('b7')):
        return 107
    
    print("***** No note value for {}",format(str))
    sys.exit(1)
    return 1

parser = argparse.ArgumentParser(description="Output sfz file sample regions for selected files")
parser.add_argument('prefix', type=str,nargs=1,help='select files matching prefix')
parser.add_argument('--line','-l',type=str,nargs=1,help='string to add each sample line',default=[''])
parser.add_argument('--path','-p',type=str,nargs=1,help='Path added front of sample',default='.')
parser.add_argument('--exclude','-e',type=str,metavar='str',nargs=1,help='Exclude matching files',default=[''])
args = parser.parse_args()

prefix=args.prefix[0]
dir=args.path[0]
#calculate velocity groups
vgroups=1
vind=len(prefix)
samples = []
# collect sample files
for (dirpath,dirnames,filenames) in os.walk('.'):
    for f in filenames:
        if (f.startswith(prefix)):
            if(args.exclude[0] == '' or
               (not args.exclude[0] in f)):
                note = GetNote(f[vind+1:vind+4])
                samples.append( dict(file = f,
                                vel = int(f[vind]),
                                note = note))
                if (vgroups < int(f[vind])):
                    vgroups = int(f[vind])
                      
# generate
for vel in range(1,vgroups+1):
    for note in range(1,127):
        cs = []
        # collect valid samples
        for c in samples:
            if (c['note'] <= note+2 and c['note'] >= note-2 and c['vel'] == vel):
                cs.append(c)
        seq=1
        for s in cs:
            print("<region> sample={dir}\{file} lokey={note} hikey={note} pitch_keycenter={orgnote} lovel={lovel} hivel={hivel} seq_length={seqlen} seq_position={seq} {line}".format(dir=dir,file=s['file'],note=note,orgnote=s['note'],lovel=math.ceil((vel-1)*127/vgroups),hivel=math.floor((vel)*127/vgroups),seq=seq,seqlen=len(cs),line=args.line[0]))
            seq += 1



