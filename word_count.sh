#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Использование: $0 <имя_файла> <слово>"
    exit 1
fi

file=$1
word=$2

if [ ! -f "$file" ]; then
    echo "Ошибка: файл '$file' не найден."
    exit 1
fi

count=$(grep -o -i "$word" "$file" | wc -l)

echo "Слово '$word' встречается $count раз(а) в файле '$file'."
