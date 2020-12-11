#!/usr/bin/bash -x

noOfHeads=0
noOfTails=0
margin=0

function resultCounter ()
{
	if [ $1 -eq 0 ]
		then
			noOfHeads=$(( $noOfHeads + 1 ))
		else
			noOfTails=$(( $noOfTails + 1 ))
		fi
}

function checkMargin ()
{
	if [ $1 -gt $2 ]
	then
		winMargin=$(( $1 - $2 ))
	else
		winMargin=$(( $2 - $1 ))
	fi
	echo $winMargin
}

echo "Welcome To Flip Coin Simulator"

	while [[ $noOfHeads -ne 21 && $noOfTails -ne 21 ]]
	do
		flipResult=$(( RANDOM%2 ))
		resultCounter $flipResult
	done

margin=$( checkMargin $noOfHeads $noOfTails )
if [ $margin -eq 0 ]
then
	while [ $margin -le 2 ]
	do
		flipResult=$(( RANDOM % 2 ))
		resultCounter $flipResult
		margin=$( checkMargin $noOfHeads $noOfTails )
	done
fi

if [ $noOfHeads -gt $noOfTails ]
then
	echo "Heads Won by Margin of $margin over Tails"
else
	echo "Tails Won by Margin of $margin over Heads"
fi
