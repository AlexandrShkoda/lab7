#!/bin/bash

# Проверяем, передан ли аргумент
if [ $# -eq 0 ]; then
    echo "Использование: $0 /путь/к/вашему/файлу"
    exit 1
fi

# Указываем файл из аргумента
FILE_TO_WATCH="$1"

# Проверяем, существует ли файл
if [ ! -f "$FILE_TO_WATCH" ]; then
    echo "Файл не найден: $FILE_TO_WATCH"
    exit 1
fi

# Получаем хэш файла
LAST_HASH=$(md5sum "$FILE_TO_WATCH")

while true; do
    # Ждем 1 секунду перед проверкой
    sleep 1
    
    # Получаем текущий хэш файла
    CURRENT_HASH=$(md5sum "$FILE_TO_WATCH")
    
    # Сравниваем хэши
    if [ "$LAST_HASH" != "$CURRENT_HASH" ]; then
        echo "Файл изменен: $FILE_TO_WATCH"
        LAST_HASH=$CURRENT_HASH
    fi
done
