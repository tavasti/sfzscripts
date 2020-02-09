import sys
from sfzgen import GetNote

# Verify that GetNote gives us back the notes that we expect.
midi_val = 24  # Starting midi value.
for scale in range(1, 8):
  for note in 'cdefgab':
    for sharp in ('', 's', '#'):
      name = note + sharp + str(scale)

      if name[:2] in ('es', 'e#', 'bs', 'b#'):
        continue

      assert GetNote(name, 'unused_filename') == midi_val

      # For sharps, we want to test the same note value for 's' and '#', so
      # don't increment for 's'.
      if sharp != 's':
        midi_val += 1

# verify that we the correct error for unrecognized patterns.
err_code = 0
def ExitFake(code):
  global err_code
  err_code = code
org_exit = sys.exit
sys.exit = ExitFake
GetNote('blech', 'unused_filename')
assert(err_code == 1)
sys.exit = org_exit

print('ok')
