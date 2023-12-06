#!/bin/bash
for map_file in maps/*; do
    my_file=$(basename "$map_file")
    ../.././setting_up "$map_file" > "test.txt"
    diff -q "test.txt" "solved/$my_file"
done
rm test.txt
