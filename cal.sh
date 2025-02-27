#!/bin/bash

#taking choice from the user and performing the action using the case and functions

read -p "please a for addition, b for subtraction, c for multiplication and d for division: " choice
read -p "please enter first number: " num1
read -p "please enter second number: " num2

#writing the functions
add() {
    a=$num1
    b=$num2
    let sum=$a+$b
    echo "sum of the numbers is $sum"
}

sub() {
    a=$num1
    b=$num2
    let sum=$a-$b
    echo "sum of the numbers is $sum"
}

mul() {
    a=$num1
    b=$num2
    let sum=$a*$b
    echo "sum of the numbers is $sum"
}

div() {
    a=$num1
    b=$num2
    let sum=$a/$b
    echo "sum of the numbers is $sum"
}
case $choice in
    a) add ;;
    b) sub;;
    c) mul;;
    d) div;;
    *) echo "none option has been selected"
esac


