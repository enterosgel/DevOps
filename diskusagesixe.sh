#!/bin/bash

#  Функція, яка виводить обсяг дискового простору для папок у вказаній директорії.
show_disk_usage() {
    directories="$1"
    echo "Disk usage for $directories:"
    # Використаємо команду 'du' для отримання обсягу дискового простору для перших 10 елементів у директорії та відсортуємо їх у порядку спадання.
    du -ah "$directories" 2>/dev/null | sort -rh | head -n 10
    echo "****"
}

# Виклик функції для кожної вказаної директорії.
show_disk_usage "/home"
show_disk_usage "/var/log"