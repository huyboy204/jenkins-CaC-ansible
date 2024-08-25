#!/bin/bash

inputfile="plugins.txt"
outfile="plugins.yaml"

if [ -f "$outfile" ]; then
  rm "$outfile"
fi

echo "plugins:" > $outfile

while read -r line; do

  IFS=': ' read -ra parts <<< "$line"

  name="${parts[0]}"

  echo "  - artifactId: $name" >> $outfile

done < $inputfile
