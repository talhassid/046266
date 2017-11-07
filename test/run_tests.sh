#!/bin/bash

./part1 < example1_unix.cmm > your_out1_unix.tokens
./part1 < example2_unix.cmm > your_out2_unix.tokens
./part1 < example3_unix.cmm > your_out3_unix.tokens
./part1 < example1_dos.cmm > your_out1_dos.tokens
./part1 < example2_dos.cmm > your_out2_dos.tokens
./part1 < example3_dos.cmm > your_out3_dos.tokens

diff example1_unix.tokens your_out1_unix.tokens
diff example2_unix.tokens your_out2_unix.tokens
diff example3_unix.tokens your_out3_unix.tokens
diff example1_dos.tokens your_out1_dos.tokens
diff example2_dos.tokens your_out2_dos.tokens
diff example3_dos.tokens your_out3_dos.tokens
