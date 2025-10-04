@echo off

title ADC Canary Compiler (ADC-CC)
echo === ADC Canary Compiler (ADC-CC) ===

set /p SRC_PATH=path to ADC_Archiver_Canary.py: 
set /p ICO_PATH=ico (.ico): 

nuitka --onefile --enable-plugin=tk-inter --follow-imports --windows-icon-from-ico="%ICO_PATH%" "%SRC_PATH%"

pause