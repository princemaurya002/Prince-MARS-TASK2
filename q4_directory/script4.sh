#!/bin/bash

read -p "Enter the file name : " file

list=()

c=0
d=0
while read -r i ; do

	row=()

	for j in "$i" ; do
		row["$c"]="$j"
		((c++))
	done

	list["$d"]="$row"
	((d++))

done <"$file"

for i in ${list[@]} ; do
	for j in ${i[@]} ; do
		echo "$j"
	done
done


