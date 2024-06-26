#!/bin/bash

# Перевірка кількості аргументів
if [ $# -ne 1 ]; then
    echo "Потрібно вказати формат файлів, які треба перемістити"
    exit 1
fi

# Формат файлів, який було введено
format=$1

# Змінення робочої директорії на /tmp
cd /tmp

# Створення нової директорії /tmp/newdir
mkdir -p newdir

# Копіювання файлів з вказаним попередньо форматом в нову директорію
cp *.$format /tmp/newdir || { echo "Не вдалося скопіювати файли"; exit 1; }

# Підтвердження успішного копіювання
echo "Файли з форматом $format були скопійовані в /tmp/newdir"

# Виведення типів скопійованих файлів
echo "Типи скопійованих файлів:"
for file in /tmp/newdir/*.$format; do
    file $file
done