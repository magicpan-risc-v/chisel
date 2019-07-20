#!/bin/bash
echo 'the difference'
res=$(cmp -l $1 $2)
expect=()
if [ ${#res[*]} == ${#expect[*]} ]
then
	echo 'success!'
else
	echo 'faild'
	echo $res
	printf "0x%-8x\n" 85
	total=${#res[@]}
	for (( i=0; i<=$(( $total -1)); i++))
	do
		val=`expr $i % 3`
		if [ $val == 0 ]
		then
			printf "0x%x: 0x%x 0x%x\n" ${res[i]} ${res[i+1]} ${res[i+2]}
			printf "%d: %d %d\n" ${res[i]} ${res[i+1]} ${res[i+2]}
		fi
		echo $res
	done
fi
