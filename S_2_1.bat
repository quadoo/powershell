@echo off
if exist $tmpfile.txt del $tmpfile.txt
for /f "tokens=3 delims= " %%z in (%1) do (
	for /f "tokens=1 delims=?" %%y in ("%%z") do (
	echo %%y >>$tmpfile.txt
	)
)
more $tmpfile.txt | sort ?$out.txt
