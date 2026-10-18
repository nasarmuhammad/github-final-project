#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.
# Author: Upkar Lidder (IBM)
# Additional Author: nasarmuhammad

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest
# Output:
# simple interest = p*t*r/100

read -r -p "Enter the principal: " p
read -r -p "Enter time period in years: " t
read -r -p "Enter rate of interest per year: " r

if ! command -v bc >/dev/null 2>&1; then
  echo "Error: bc is required to calculate decimal interest." >&2
  exit 1
fi
s=$(echo "scale=2; $p * $t * $r / 100" | bc)
echo "The simple interest is: $s"
