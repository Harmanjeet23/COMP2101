#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#to get the username and hostname dynamically, use environment variable.
uname="$USER"
hostname="$(hostname)"
day=$(date +%A)
currenttime=$(date +%I:%M\ %p)
#use date command to get what day of the week is it and to get the date.
###############
# Main        #
###############
#using if&else command, to test the name of day and adding any message according to the name of the day,
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, engineer $uname!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, comedian $uname!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, system support $uname!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, bash scriptor $uname!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, system designer $uname!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, error $uname!"
else
csay="Welcome to planet $hostname, food-suplier $uname!"
fi
cowsay "$csay It is $currenttime on $day ." #saving in for output
