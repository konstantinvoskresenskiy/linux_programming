#!/bin/sh

for input_file in "$@"; do
    output_file="${input_file%.*}.png"
    echo "Конвертируем $input_file в $output_file..."
    convert "$input_file" "$output_file"
    echo "Выполнено для $input_file"
    echo "---"
done
