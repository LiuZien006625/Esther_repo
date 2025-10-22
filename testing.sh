#!/bin/bash

# Initialize a counter variable
count=1
magic_num=16

echo "Welcome to the number game!"
echo -e "\nMy name is Ester\n"

# Loop while 'count' is less than or equal to 3
while [ $count -le 3 ]
do
  echo "I am thinking of a number between 1 and 100."
  echo "Can you guess what it is?"
  read -p "Enter a number between 1 and 100: " user_num
  echo "Your number was $user_num"

  # Increment the counter
  count=$((count + 1))
  if (( user_num == magic_num )); then
      echo "Congratulation, you're right!"
      count=100
  else 
      echo "Try again!"
  fi
done

echo "Loop finished."