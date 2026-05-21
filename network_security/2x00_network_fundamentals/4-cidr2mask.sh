#!/bin/bash
bits=""; for i in {1..32}; do [ $i -le $1 ] && bits="${bits}1" || bits="${bits}0"; done; for i in 1 9 17 25; do echo "ibase=2; ${bits:$((i-1)):8}" | bc | tr '\n' '.'; done | sed 's/\.$/\n/'
