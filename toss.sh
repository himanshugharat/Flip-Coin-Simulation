#!/bin/bash -x
hwin=0
twin=0
res(){
	toss=$((RANDOM%2))
       	if [ $toss -eq 1 ]
        then
                echo "head"
                ((hwin++))
        else
                echo "tails"
                ((twin++))
        fi

}
while [ $hwin -lt 21 ] && [ $twin -lt 21 ]
do
	res
done
echo "no of time head won"$hwin
echo "no of times tail won"$twin
if [ $hwin -eq $twin ]
then
	res
else

	if [ $hwin -gt $twin ]
	then
		echo "head won by"$((hwin-twin))
	else
		echo "tails won by"$((hwin-twin))
	fi
fi
