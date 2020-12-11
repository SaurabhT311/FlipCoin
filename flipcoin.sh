#!/usr/bin/bash -x

echo "Well To Flip Coin Simulator"

read -p "Do you want to flip a coin (y/n) : " permission

if [ $permission == "y" ]
then
	flipResult=$(( RANDOM%2 ))
	if [ $flipResult -eq 0 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
fi
