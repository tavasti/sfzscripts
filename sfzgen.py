#!/usr/bin/python3

import sys
import os
import math
import argparse
import re

# This will match some note names that will never be used, like "b#", but that's
# ok.
NOTES = dict(zip('cdefgab', (0, 2, 4, 5, 7, 9, 11)))
SHARPS = {'': 0, 's': 1, '#': 1}
FILE_RX = re.compile(r'([a-g])([s#]?)([1-7])')
def GetNote(str, file):
    m = FILE_RX.match(str)
    if m:
        return 12 + int(m.group(3)) * 12 + NOTES[m.group(1)] + SHARPS[m.group(2)]
    else:
        return -1

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Output sfz file sample regions for selected files")
    parser.add_argument('file', type=str,nargs='+',help='Sample files')
    parser.add_argument('-n','--noteloc', type=int,nargs=1,action='append',help='Note value location, can be repeated')
    parser.add_argument('--line','-l',type=str,nargs=1,help='string to add each sample line')
    parser.add_argument('--ignore','-i',action="store_true",help="Ignore files failing note detection")
    parser.add_argument('--stretch','-s',action="store_true",help="Use whole mini note range regardless of distance from original sample")
    args = parser.parse_args()
    samples = []
    # collect sample files to list
    for f in args.file:
        # we can have more than one note location, loop to find correct
        note = -1
        missed = []
        for n in args.noteloc:
            nstr=f[n[0]:n[0]+4]
            note = GetNote(nstr,f)
            if(note >= 0):
                samples.append( dict(file = f,
                                    note = note))
                break
            else:
                missed.append(nstr)
        if(note < 0): # no note found
            print("***** No note value for strings {} in file {}".format(missed,f), file=sys.stderr)
            if(args.ignore == False):
                sys.exit(1)


    # generate
    generated = 0
    for note in range(1,127):
        cs = []
        is_higher=False
        # collect valid samples
        for c in samples:
            if (c['note'] <= note+2 and c['note'] >= note-2):
                cs.append(c)
            if (c['note'] > note+2):
                is_higher=True
        seq=1
        for s in cs:
            if(args.stretch and generated == 0): # lowest note, start from zero
                print("<region> sample={file} lokey=0 hikey={note} pitch_keycenter={orgnote} seq_length={seqlen} seq_position={seq} {line}".format(file=s['file'],note=note,orgnote=s['note'],seq=seq,seqlen=len(cs),line=args.line[0]))
            elif(args.stretch and is_higher == False): #highest note
                print("<region> sample={file} lokey={note} hikey=127 pitch_keycenter={orgnote} seq_length={seqlen} seq_position={seq} {line}".format(file=s['file'],note=note,orgnote=s['note'],seq=seq,seqlen=len(cs),line=args.line[0]))
            else:
                print("<region> sample={file} lokey={note} hikey={note} pitch_keycenter={orgnote} seq_length={seqlen} seq_position={seq} {line}".format(file=s['file'],note=note,orgnote=s['note'],seq=seq,seqlen=len(cs),line=args.line[0]))
            seq += 1
            if(seq > len(cs)): #this note handled
                generated += 1





