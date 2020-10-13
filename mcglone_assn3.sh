#! /bin/bash

#create a bash script

cut -f 1 BTS_data.txt | sort | uniq | grep -v ID > BTS_uniq

#create a new file containing unique snakes, without the header

while read line; do my_array[$counter]=$line; counter=$((counter+1)); done < BTS_uniq

#loop through that file to create an array for each snake

for i in ${my_array[@]}; do grep "$i" BTS_data.txt > file_"$i"; done

#create a file containing the respective data for each snake

echo $(ls file* | wc -l) files were created!

#report the number of files that were created
