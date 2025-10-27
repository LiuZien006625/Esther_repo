#!/bin/bash

# Initialize a counter variable
count=1
magic_num=16

echo "Welcome to the number game!"
echo -e "\nMy name is Ester\n"

# Loop while 'count' is less than or equal to 3
while [ $count -le 3 ]
do
  echo ""
  echo "I am thinking of a number between 1 and 100."
  echo "Can you guess what it is?"
  read -p "Enter a number between 1 and 100: " user_num
  echo "Your number was $user_num"

  # Increment the counter
  count=$((count + 1))
  if (( user_num == magic_num )); then
      tput setaf 2; echo "Congratulation, you're right!" ; tput sgr0
      break
  elif [ $count -le 3 ]; then
      echo ""
      tput setaf 3; echo "Try again!" ; tput sgr0
  else
      tput setaf 1; echo "You have failed!!!" ; tput sgr0
  fi
done

tput setaf 5; echo "Game over!" ; tput sgr0