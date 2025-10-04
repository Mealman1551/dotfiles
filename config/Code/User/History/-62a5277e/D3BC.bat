@echo off

title Galv Compiler
echo === Galv Compiler for ADC ===

set /p SRC_PATH=path to ADC_Archiver_Canary.py: 
::set /p ICO_PATH=ico (.ico): 


::--windows-icon-from-ico="%ICO_PATH%"

nuitka --onefile --enable-plugin=tk-inter --follow-imports  "%SRC_PATH%"

pause