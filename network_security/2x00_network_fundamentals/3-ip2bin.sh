#!/bin/bash
IFS=. read -r o1 o2 o3 o4 <<< "$1"; for o in $o1 $o2 $o3 $o4; do echo "obase=2; $o" | bc | awk '{printf "%08d", $0}'; done | awk '{print substr($0,1,8)"."substr($0,9,8)"."substr($0,17,8)"."substr($0,25,8)}'
