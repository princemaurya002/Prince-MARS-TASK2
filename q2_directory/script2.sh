#!/bin/bash

#Question 2

toappend=date

cd ~/task2/q1_directory/

for i in Modified/*; do
	"$toappend" >> $i
done
