#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, Course: $COURSE "
echo " Process ID of current shell script: $$ "

#./16-other-script.sh

source ./16-other-script.sh

echo "After calling other script, Course: $COURSE "
echo " Process ID of current shell script: $$ "