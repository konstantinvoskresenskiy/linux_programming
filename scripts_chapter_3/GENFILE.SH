#!/bin/bash
script="upper_lower.sh"
echo -n > "$script"
for file in *; do
  if [ -f "$file" ]; then
    new_name=$(echo "$file" | tr '[:lower:]' '[:upper:]')
    echo "mv \"$file\" \"$new_name\"" >> "$script"
  fi
done
echo "Создан скрипт для переименования файлов."
echo "Вы можете выполнить его с помощью ./upper_lower.sh"
chmod +x "$script"
