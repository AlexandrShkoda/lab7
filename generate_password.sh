#!/bin/bash

# Проверка на наличие аргумента
if [ "$#" -ne 1 ]; then
    echo "Использование: $0 <длина_пароля>"
    exit 1
fi

# Генерация пароля
LENGTH=$1
PASSWORD=$(< /dev/urandom tr -dc 'A-Za-z0-9' | head -c "$LENGTH")

echo "Сгенерированный пароль: $PASSWORD"

