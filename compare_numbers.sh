#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Использование: $0 <число1> <число2>"
    exit 1
fi

number1=$1
number2=$2

if ! [[ "$number1" =~ ^-?[0-9]+$ ]] || ! [[ "$number2" =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: оба аргумента должны быть числами."
    exit 1
fi

if [ "$number1" -gt "$number2" ]; then
    echo "$number1 больше, чем $number2."
elif [ "$number1" -lt "$number2" ]; then
    echo "$number1 меньше, чем $number2."
else
    echo "$number1 и $number2 равны."
fi

