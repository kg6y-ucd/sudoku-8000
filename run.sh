#!/bin/sh

# pcm
od -t x2 -v sudoku-sfx1-22050.pcm | sed -e 's/.......//' >> sudoku-sfx1-22050.pcm.tal
od -t x2 -v sudoku-sfx2-22050.pcm | sed -e 's/.......//' >> sudoku-sfx2-22050.pcm.tal

# rom
uxnasm sudoku.tal sudoku.rom

# bank data
xxd -r -p 8000-games.txt > 8000-games.bin

# padding
padding_size=$(expr 65536 - 256 - `stat -c%s sudoku.rom`)
echo $padding_size
dd if=/dev/zero of=padding.bin bs=1 count=${padding_size}

# rom with banks
cat sudoku.rom padding.bin 8000-games.bin > sudoku-8000.rom

# run
uxnemu sudoku-8000.rom
