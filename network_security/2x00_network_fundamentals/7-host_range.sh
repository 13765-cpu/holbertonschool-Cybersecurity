#!/bin/bash
ipcalc -b $1/$2 | grep -E "HostMin|HostMax" | awk '{print $2}' | paste -sd ' - ' -
