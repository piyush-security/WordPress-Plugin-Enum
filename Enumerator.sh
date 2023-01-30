#!/bin/bash

cat Plugin-names.txt | cut -d "/" -f1 > 1.txt ; rm Plugin-names.txt ; mv 1.txt Plugin-names.txt 

wordlist="Plugin-names.txt"
Output_file="output.txt"

while read line; do
  plugin_name="$line"
  url="http://blog.inlanefreight.com/wp-content/plugins/$plugin_name"
  response=$(curl -I -X GET "$url" -s -o /dev/null -w "%{http_code}")
  if [ "$response" != "404" ]; then
    echo "$url" >> "$Output_file"
  fi
done < "$wordlist"
