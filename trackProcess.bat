@echo off
tasklist /FO CSV > input.txt
(for /f "tokens=1,* delims=," %%a in (input.txt) do echo %%a) > output.txt
sort /unique output.txt > procList.txt
