#!/usr/bin/env bash
#File name; guessinggame.sh

function guessinstruction {
	echo "  This is a guessing game. Here is the rule:"
	echo "  1.You will be prompted to guess the number"
	echo "of the files in the current directory."
	echo "  2.You will be advised in the process by "
	echo "telling you whether your answer is too high"
	echo "or too low."
	echo ""
	echo "Ready? Good luck!"
	echo "So, how many files are in the current directory?"
}

guessinstruction
read answer
rightanswer=$(ls | wc -w)

while [[ $answer -ne $rightanswer ]]
do
	if [[ $answer -lt $rightanswer ]]
	then
		echo "Your answer is too low! Guess again:"
	elif [[ $answer -gt $rightanswer ]]
	then
		echo "Your answer is too high! Guess again:"
	fi
	read answer
done

echo "Congratulations! You get the right answer!"
