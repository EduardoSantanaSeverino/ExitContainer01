#!/bin/bash

# Important here...
# This is an example of a long executable task, that hangs after X amount of seconds, and will not exit until its stopped. 

for i in {1..100}
do
   echo "Welcome $i times"
   sleep 1
done