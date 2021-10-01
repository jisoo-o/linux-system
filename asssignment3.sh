#!/bin/bash
if ! [[ "$1" =~ ^[0-9]+$ ]];then
        echo "first input is not an integer"
	exit 1
elif ! [[ "$2" =~ ^[0-9]+$ ]];then
        echo "second input is not an integer"
	exit 1
fi

for row in $(seq 1 $1)
do 
	for col in $(seq 1 $2)
	do
		result=`expr $row \* $col`
		echo -n "$row*$col=$result "
	done
	echo ""

done
