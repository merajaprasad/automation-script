#!/bin/bash
which bash

for (( num=1; num<=10; num++ ))
do
    echo $num
    if [ $num == 6 ]; then
    break
    fi
done

# blank space
echo

for (( num=1; num<=20; num++ ))
do
    if [[ $num -gt 6 && $num -lt 10 ]]; then
    continue
    fi
    echo $num
done



