#!/bin/bash
set -xe

#for s in 100 200; do
for s in 10 20; do
	dd if=/dev/zero of=${s}M.file bs=1M count=$s
done

rm zip-upstream.txt

for f in $(ls *.file); do
	./crc32.pl $f >> zip-upstream.txt
done
