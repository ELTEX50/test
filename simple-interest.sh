#!/usr/bin/env bash
# Usage: ./simple-interest.sh <principal> <rate_percent> <time_years>
# Example: ./simple-interest.sh 1000 5 2  -> 100.00

if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate_percent> <time_years>"
  exit 1
fi

p="$1"
r="$2"
t="$3"

# SI = (p * r * t) / 100
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
echo "$si"
