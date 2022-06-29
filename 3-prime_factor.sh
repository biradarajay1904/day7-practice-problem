read -p "Enter the number to find factors:" number
a=0
echo "The prime factors of $number are"
for ((i=2 ; i<= $number ; i++ ))
do
	while (($number%$i == 0 ))
	do
		array[((a++))]=$i
		number=$((number/i))
	done
done

echo "${array[@]}"
