#!/usr/bin/bash -x
noOfHeads=0
noOfTails=0

echo "Welcome To Flip Coin Simulator"

while [[ $noOfHeads -ne 21 && $noOfTails -ne 21 ]]
do
	flipResult=$(( RANDOM%2 ))
	if [ $flipResult -eq 0 ]
	then
		echo "Heads"
		noOfHeads=$(( $noOfHeads + 1 ))
	else
		echo "Tails"
		noOfTails=$(( $noOfTails + 1 ))
	fi
done

if [ $noOfHeads -eq 21 ]
then
	winMargin=$(( $noOfHeads - $noOfTails ))
	echo "Heads won by $winMargin over Tails"
else
	winMargin=$(( $noOfTails - $noOfHeads ))
	echo "Tails won by $winMargin over Heads"
fi
