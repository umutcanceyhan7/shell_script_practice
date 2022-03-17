#!/bin/bash

# Optional argument
directory=$1

# It takes a directory argument and checks the contents in it if the file has no size removes it.
RemoveNoSizedFiles () {
    removeCounter=0
    # inside the directory
    for file in $1/*;
    do
      # Checking if the file exists and the file is not directory
      if [ -e $file ] && [ ! -d $file ]
        then
        # Checkink if the file has no size (zero)
        if [ ! -s $file ]
            then
            # Remove the file
            rm $file
            # Increase the removeCounter
            ((removeCounter++))
        fi
      fi
    done
}


# Check for directory is valid or not
if [ -d $directory ]
then
  # Argument is not given

  if [ -z $directory ]
  then
  # We clean the current directory
  RemoveNoSizedFiles .

  # Argument is given
  else
  # If valid call cleaner function
  RemoveNoSizedFiles $directory
  fi

# Directory is not valid!
else
# If not valid print error message and exit with 1
echo "The given directory is not valid!"
exit 1
fi



