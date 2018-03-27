#!/bin/bash

function nof {
	num=$(ls -1 --file-type | grep -v '/$' | wc -l)
}

echo "How many files are in the current directory?"
correct=0
while [[ correct -ne 1 ]]
do
	read ui
	nof
	if [[ $ui -lt $num ]]
	then
		echo "Too low"
	elif [[ $ui -gt $num ]]
	then
		echo "Too high"
	else
		echo "Congratulations, correct!"
		correct=1
	fi
done

