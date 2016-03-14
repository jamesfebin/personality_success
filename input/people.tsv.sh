#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"


sed '1d' people_data.csv > no_header_people.csv

awk -F, '{$1=++i "\t" $1;}1' OFS=, no_header_people.csv > output_people_data.csv

cut -f1,12,13,15 -d$'\t' output_people_data.csv 
