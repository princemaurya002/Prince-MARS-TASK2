#!/bin/bash

#Question--1


directoy=${pwd}
echo $directory
mkdir Modified

file=${grep/.txt}

for i in *.txt; do
	mv "$i" "${i%.txt}.pdf"
done

for i in *.pdf; do
	cp $i Modified/
done

for i in *.pdf; do
	mv "$i" "${i%.pdf}.txt"
done

