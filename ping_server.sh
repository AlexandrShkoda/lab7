#!/bin/bash

# Проверка на наличие аргумента
if [ "$#" -ne 1 ]; then
    echo "Используйте: $0 <адрес_сервера>"
    exit 1
fi

SERVER=$1

# Пинг сервера
ping -c 1 $SERVER > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Сервер $SERVER доступен."
else
    echo "Сервер $SERVER недоступен."
fi
