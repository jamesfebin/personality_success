#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"


sed '1d' people_data.csv > no_header_people_p.csv

awk -F, '{$1=++i "\t" $1;}1' OFS=, no_header_people_p.csv > output_people_data_p.csv

cut -f1,2,3,4,5,6,7,8,9,10,11 -d$'\t' output_people_data_p.csv 
