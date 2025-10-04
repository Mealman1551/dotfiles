#!/bin/bash

echo "=== Galv compiler for ADC ==="

read -e -p "Path to ADC_Archiver_Canary.py: " script_path

nuitka --onefile \
       --enable-plugin=tk-inter \
       --follow-imports \
       "$script_path"

read -p "Press any key to close..." -n1 -s