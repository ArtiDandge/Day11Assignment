#!/bin/bash -x

echo "This problem displays the winner Heads or Tails"

HeadWinCounts=0
TailWinCounts=0

while true
do

 	FLIP=$(((RANDOM%10)%2))
	if [[ $FLIP -eq 1 ]]
	then
		((HeadWinCounts++))
		if [[ $HeadWinCounts -eq 21 ]] && [[ $HeadWinCounts -ne $TailWinCounts ]] 
		then
			echo "Head Won"
			HeadWonrate=$(($HeadWinCounts - $TailWinCounts))
			echo "Head won $HeadWonrate times more"
			exit
		fi

	else
		((TailWinCounts++))
		if [[ $TailWinCounts -eq 21 ]] && [[ $HeadWinCounts -ne $TailWinCounts ]]
		then
		echo "Tail won"
                TailWonrate=$(($TailWinCounts - $HeadWinCounts))
                echo "Tail won $TailWonrate times more"
		exit
		fi
		
	fi
	if [[ $HeadWinCounts -eq $TailWinCounts ]]
	then
		echo "Tie up"
	fi

done

