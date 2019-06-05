num=563093
while [ $num -ge 10 ]
do
	curl https://blockchain.info/block-height/$num?format=json | jq -c . > $num.json
	num=`expr $num - 2`
done

