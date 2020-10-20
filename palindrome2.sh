#! /bin/bash

for (( i=0; i<3; i++ ))
do
    num=$((100+RANDOM%900))
    s=0
    rev=""
    temp=$num

    while [ $num -gt 0 ]
    do
        s=$(( $num % 10 ))
        num=$(( $num/10 ))
        rev=$( echo $rev$s )
    done

    if [ $temp -eq $rev ]
    then
        echo "$temp is Palindrome number"
    else
        echo "$temp is not palindrome number"
    fi
done