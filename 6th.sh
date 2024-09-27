#!/bin/bash
which bash

read -p "to whom raja loves the most? [hint: gf, friend, family, carrer] : " ans

if [ $ans == 'gf' ]; then
    echo "not much"
elif [ $ans == "friend" ]; then
    echo "not much"

elif [ $ans == "family" ]; then
    echo "good ans"
elif [ $ans == "carrer" ]; then
    echo "yes, correct"
else
    echo "you have defined whong word"
fi





