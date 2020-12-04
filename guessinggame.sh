#!/usr/bin/env bash
# File: guessinggame.sh
function inputverification {
  # No input type validation
  if [[ $1 -gt $count ]]
  then
    echo "Your guess is too high, try again:"
  elif [[ $1 -lt $count ]]
  then
    echo "Your guess is too low, try again:"
  elif [[ $1 -eq $count ]]
  then
    found=1
    echo "You guessed it right, congratulations!"
  fi
}
count=$(ls -1 | wc -l)
echo "Try guessing how many files are in the current directory"
found=0

while [[ $found -eq 0 ]]
do
  read input
  inputverification input
done
