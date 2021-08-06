#! /bin/bash

# setting variable "input" to equal to file name "server.txt"
input="values.txt"

# setting variable "varname" to equal to string "logs"
varname="logs"

# compare the value of variable "varname"
if [[ "$varname" == "logs" ]]
then 
  # read each line 
  while IFS= read -r line || [ -n "$line" ]
  do
    # run echo commands 
    echo "Server *$line*" && echo "Running Test"
  done < "$input"
fi