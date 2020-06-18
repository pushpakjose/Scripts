#!/bin/bash

while IFS= read -r line; do

         if [[ $line =~ ^\. ]]; then

              echo  "$line That is a directory"

        elif [[ $line =~ (\.sh$) ]]; then

              echo  "$line That file exists"

        elif
            [[  $line =~ (\.jpg$) ]]; then
                echo "$line I dont know what that is!."
                fi
                
done <filenames.txt
 