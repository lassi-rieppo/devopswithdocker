#!/usr/bin/bash

guesses=0
guess=0
((number = RANDOM % 10 + 1))

echo -e "Guess the number (1-10) I am thinking of. You have three guesses."

while (( guess != number && guesses < 3)); do
	guesses=$((guesses+1))
	read -p "Enter your guess ($guesses / 3): " guess
	if (( guess < number)); then
		echo "Your guess was too low"
	elif (( guess > number)); then
		echo "Your guess was too high"
	elif (( guess == number)); then
		echo -e "\nYour guess was correct!\n"
	fi
done

echo -e "The correct number was $number"
