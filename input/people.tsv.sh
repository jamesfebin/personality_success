#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"


sed -i 1d people_data.csv

awk -F, '{$1=++i "\t" $1;}1' OFS=, people_data.csv > output_people_data.csv

cut -f1,2 -d$'\t' output_people_data.csv 
