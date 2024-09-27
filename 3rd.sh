#!/bin/bash

# Conditional Statement

read -p "enter number: " number
echo $number
if [ $number -gt 100 ]; then
    echo "the $number is greter then 100"
else
    echo "the $number is less the 100"
fi

<<disclaimer
this is just for infotainment purpose
disclaimer

read -p "raja ne mudh kar kisko dekha? : " bandi
read -p "raja ka pyarr % for bro is : " pyarr

if [ $bandi == "bro" ]; then
    echo "raja is loyal"

elif [ $pyarr -ge 100 ]; then
    echo "raja is still loyal"
else
    echo "raja is not loyal"
fi

