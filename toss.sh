#!/bin/bash -x
hwin=0
twin=0
for((i=0;i<10;i++))
do
	toss=$((RANDOM%2))
	if [ $toss -eq 1 ]
	then
		echo "head"
		((hwin++))
	else
		echo "tails"
		((twin++))
	fi
done
echo "no of time head won"$hwin
echo "no of times tail won"$twin
