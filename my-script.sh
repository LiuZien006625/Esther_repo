#!/bin/bash

magic_num=16

echo "Welcome to the number game!"
echo -e "\nMy name is Ester\n"

# Take user input
echo "I am thinking of a number between 1 and 100."
echo "Can you guess what it is?"
read -p "Enter a number between 1 and 100: " user_num
echo "Your number was $user_num"

if [[ $user_num = 16 ]]; then
    echo "Congratulation, you're right!"
    break
elif [[ $user_num -gt 16 ]]; then
    echo "The number you guessed is too big, try again!"
    read -p "Enter a number between 1 and 100: " user_num2
echo "Your number was $user_num2"
else 
    echo "The number you guessed is too small, try again!"
    read -p "Enter a number between 1 and 100: " user_num2
echo "Your number was $user_num2"
fi



if [[ $user_num2 = 16 ]]; then
    echo "Congratulation, you're right!"
    break
elif [[ $user_num2 -gt 16 ]]; then
    echo "The number you guessed is too big, try again!"
else 
    echo "The number you guessed is too small, try again!"
fi



