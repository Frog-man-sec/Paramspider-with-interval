#!/bin/bash

while true; do
    while IFS= read -r domain; do
        paramspider -d "$domain"
        sleep_duration=$(shuf -i 5-10 -n 1)
        sleep "$sleep_duration"
    done < alive.txt
done
