#!/bin/bash
maths() {
num1=$1
num2=$2
read -p "enter the symbol (+ - * /):" symbol

if [ "$symbol" == "+" ]
then
  ans=$(( $num1+$num2 ))
  echo "Result is: $ans"

elif [ "$symbol" == "-" ]
then
  ans=$(( $num1-$num2 ))
  echo "Result is: $ans"

elif [ "$symbol" == "*" ]
then
  ans=$(( $num1 * $num2 ))
  echo "Result is: $ans"

elif [ "$symbol" == "/" ]
then 
  if [ $num2 -eq 0 ]
  then 
    echo "error division by zero"
  else 
  ans=$( echo "scale=2; $num1/$num2" | bc )
  echo "Result is: $ans"
  fi 
else
  echo "invalid operator"
fi
}
maths 10 20
