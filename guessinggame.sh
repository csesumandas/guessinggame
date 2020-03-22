#!/bin/bash
# File:guessinggame.sh


function take_guess {
	read -p "How many files are in the current directory. Guess> " guess
}

take_guess

num_files=$(ls|wc -l)

while [[ $num_files -ne $guess ]]
do
	if [[ $num_files -gt $guess ]]
	then
		echo "Your guess is too low"
		take_guess
	else
		echo "Your guess is too high"
		take_guess
	fi
done

if [[ $num_files -eq $guess ]]
then
	echo "Congratulations.Your guess $guess is correct."
fi


