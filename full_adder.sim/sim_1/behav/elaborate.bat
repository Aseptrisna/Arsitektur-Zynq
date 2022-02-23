@echo off
set xv_path=D:\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 4799548205014a67af755c47621cd6dc -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot full_adder_tb_behav xil_defaultlib.full_adder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
