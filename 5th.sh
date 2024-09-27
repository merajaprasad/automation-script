#!/bin/bash

# this is function defination
function is_loyal() {
read -p "bata raja kisse jada pyar karta hoga? [bro; shee; ya friends ]: " gf

if [ $gf == 'bro' ]; then
    echo "correct bola,"
elif [ $gf == 'shee' ];
then
    echo "ha sahi bola"

else
    echo "nahi wrong answer"
fi
}

# this is function call

is_loyal

