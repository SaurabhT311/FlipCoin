  
#!/usr/bin/bash -x

noOfHeads=0
noOfTails=0

echo "Well To Flip Coin Simulator"

read -p "Do you want to flip a coin (y/n) : " permission

while [ $permission == "y" ]
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
	read -p "Do you want to flip a coin again (y/n) : " permission
done

echo "Total number of Heads : " $noOfHeads
echo "Total number of Tails : " $noOfTails
