#!/bin/bash

root_directory="${1-.}"
snakefood_results_file=$(mktemp)
modules_dot_file=$(mktemp)

dir=$(dirname $BASH_SOURCE)

sfood -i $root_directory > $snakefood_results_file
sfood-graph $snakefood_results_file > $modules_dot_file

"$dir/detect_circles.py" $modules_dot_file

echo "snakefood file: $snakefood_results_file"
echo "dot file: $modules_dot_file"
