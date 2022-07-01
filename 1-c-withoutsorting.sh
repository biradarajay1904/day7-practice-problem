size=10
for(( i=0; i<size; i++))
do
    array[i]=$(( RANDOM % 900 + 100 ))
done
echo "The 10 random three digit numbers are: "
echo "${array[@]}"

for(( i = 0; i < size - 1; i++ ))
do
 
    for(( j = 0; j < size - i - 1; j++))
    do
        if((array[j] > array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
           
        fi
    done
    
done

echo "The second largest element is ${array[-2]}"
echo "The second smallest element is ${array[1]}"