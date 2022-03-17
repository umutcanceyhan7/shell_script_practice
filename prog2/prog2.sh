#!/bin/bash

## Reads the user input line by line according to given number in line compares with maxNumber and prints biggest number.

# Reads a line of a given input number
processContinue=1
index=0
maxNumber=0
# Forever while loop 
while [ $processContinue -eq 1 ]
do
  # Read user input
  read userInput
  # End check
  if [ $userInput = "end" ]
  then
    # exit condition
    processContinue=0
    # print the maximum number
    echo "Maximum number is: $maxNumber"
  else
    # continue condition compare the two numbers
    if [ $userInput -gt $maxNumber ]
    # if new number is bigger update maxNumber
    then
      maxNumber=$userInput
    fi
  fi
done