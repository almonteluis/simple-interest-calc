#!/bin/bash

# Calculate simple interest: SI = (P * R * T) / 100

if [ $# -ne 3 ]; then
  echo "Usage: $0 <Principal> <Rate> <Time>"
  exit 1
fi

P=$1
R=$2
T=$3

SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)
echo "Simple Interest is: $SI"
