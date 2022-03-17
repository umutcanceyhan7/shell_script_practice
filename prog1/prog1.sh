#!/bin/bash

### !Takes text argument as parameter! 
## Reads the file, given as argument, line by line according to given number in line prints "*" respectively.

# Reads a line of a given file
while read -r line
do
  # Define a counter for "*"
  counter=0
  # Define a variable for concat "*"'s
  c=""
  # Adds "*" to c variable $line times
  while [ $counter -le $line ]
    do
        c+="*"
        counter=$(($counter+1))
    done
  # Prints the "*"'s
  echo "$c"  
done < $1