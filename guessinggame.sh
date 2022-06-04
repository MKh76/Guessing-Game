#!/usr/bin/env bash

# function 
comparison(){
    compar=$(("$user_input" - "$fidi_count"))

    if [[ $compar -eq 0 ]]
    then 
        echo "Congradulation, You guessed correctly"
        exit 0
    elif [[ $compar -gt 0 ]]
    then
        echo "You guessed too high"
    elif [[ $compar -lt 0 ]]
    then 
        echo "You guessed too low"
    fi
}

# count the number of files and dirs in the current dir and store in fidi_count
fidi_count=$(find * | wc -l)

# create a while loop 
while true
do

    # prompt the user and ask for his input
    read -rp "Please guess the number files and directory altogether: " user_input 
    
    # run the function
    comparison

done
 
