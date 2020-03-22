#!/bin/bash
# File:guessinggame.sh


function take_guess {
	read -p "How many files are in the current directory. Guess>> " guess
}

take_guess

while true
do
	if [[ $guess =~ ^[0-9]+$ ]]
	then
		num_files=$(($(ls -a | wc -l)-2)) #ignore . and ..

		if [[ $num_files -gt $guess ]]
		then
			echo "Your guess is too low"
			take_guess
		elif [[ $num_files -lt $guess ]]
		then
			echo "Your guess is too high"
			take_guess
		else
			echo "Congratulations.Your guess $guess is correct."
			break
		fi
	else
		echo "Entered guess should be numeric"
		take_guess
	fi
done




