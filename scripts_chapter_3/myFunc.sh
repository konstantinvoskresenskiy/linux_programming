#!/bin/bash
#./myFunc.sh my_Func output.txt ls -la проверка
my_Func() {
    local output_file="$1"
    shift
    "$@" > "$output_file" 2>&1
}

func_name="$1"
shift
"$func_name" "$@"
