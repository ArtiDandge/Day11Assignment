#!/bin/bash -x

echo "This problem displays the winner Heads or Tails"

FLIP=$((RANDOM%2))

if [[ $FLIP -eq 1 ]]
then
	echo "Head wins"
else
	echo "Tail wins"
fi
