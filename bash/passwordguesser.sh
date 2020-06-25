#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

done="It's matched."
error="Try Again..."
referenceString="password01" #Creating a variable referenceString to store password.
read -s -p "Guess the string:" myString #getting input from user silently for password and storing it into $my string.
echo
#using if else conditions 5 times to check whether input is valid .
if [ $myString = $referenceString ]; then
  echo "$done"
  echo
else
  echo "$error"
  read -s -p "Guess the password:" myString
 if [ $myString = $referenceString ]; then
   echo "$done"
   echo
 else
   echo
   echo "$error"
   read -s -p "Guess the password:" myString
   if [ $myString = $referenceString ]; then
     echo "$done"
     echo
   else
     echo
     echo "$error"
   read -s -p "Guess the password:" myString
if [ $myString = $referenceString ]; then
  echo "$done"
  echo
else
  echo "$error"
  read -s -p "Guess the password:" myString
	if [ $myString = $referenceString ]; then
  echo "$done"
  echo
else
  echo "error occured because of failed attempt."
 fi
fi
 fi
fi
 fi
 