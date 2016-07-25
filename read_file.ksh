#!/bin/ksh
file="./data.txt"
while IFS= read line
do
        # display $line or do somthing with $line


	

string=$line
set -f                      # avoid globbing (expansion of *).
array=(${string// / })
for i in "${!array[@]}"
do
    echo "$i=>${array[i]}"
done


if [$array[14]==1] ;




done <"$file"

