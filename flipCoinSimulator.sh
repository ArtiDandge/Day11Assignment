#!/bin/bash -x

echo "This problem displays the winner Heads or Tails"

read -p "how many times you want to flip coin ?" winCount

FLIP=$((RANDOM%2))
HeadWinCount=0
TailWinCount=0
for i in `seq $winCount` 
do
FLIP=$((RANDOM%2))
if [[ $FLIP -eq 1 ]]
then
	((HeadWinCount++))
else
	((TailWinCount++))
fi

done

echo "Head won $HeadWinCount times"
echo "Tail won $TailWinCount times"
