@echo off
for /f %%z in (IP_list.txt) do (
	echo %%z >>nb_list.txt
	nbtstat -a %%z | find "<00>" >>nb_list.txt
	echo. >>nb_list.txt
)
