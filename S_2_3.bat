@echo off
for /f %%z in (IP_list.txt) do (
	ping 1.0.0.1 -w 15000 -n 1
	ping -n 1 %%z
)
