#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"


sed '1d' people_data.csv > no_header_people_p.csv

awk -F, '{$1=++i "\t" $1;}1' OFS=, no_header_people_p.csv > output_people_data_p.csv

cut -f1,2,3,6,32,41,70,88,115,127,167 -d$'\t' output_people_data_p.csv 
