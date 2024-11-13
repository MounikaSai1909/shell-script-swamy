#!/bin/bash

MOVIES=( "RRR" "DJTillu" "Murari" )

# size of above array is 3
# index are 0,1,2

echo " First movie is: ${MOVIES[0]} "

echo " All movies are : ${@} "