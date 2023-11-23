Set WshShell = WScript.CreateObject("WScript.Shell")
REM WScript.Echo "Killing all connections"
REM A426
WshShell.Run ("psexec \\172.16.11.26 -e -h -u 172.16.11.26\CITB -p CITB -i CMD /c shutdown.exe -f -s -t 10")
WScript.sleep 1000
REM A427
WshShell.Run ("psexec \\172.16.11.27 -e -h -u 172.16.11.27\CITB -p CITB -i CMD /c shutdown.exe -f -s -t 10")
WScript.sleep 1000
REM A428
WshShell.Run ("psexec \\172.16.11.28 -e -h -u 172.16.11.28\CITB -p CITB -i CMD /c shutdown.exe -f -s -t 10")
WScript.sleep 1000
REM A429
WshShell.Run ("psexec \\172.16.11.29 -e -h -u 172.16.11.29\CITB -p CITB -i CMD /c shutdown.exe -f -s -t 10")
WScript.sleep 1000
REM A430
WshShell.Run ("psexec \\172.16.11.30 -e -h -u 172.16.11.30\CITB -p CITB -i CMD /c shutdown.exe -f -s -t 10")
WScript.sleep 1000
REM A431
WshShell.Run ("psexec \\172.16.11.31 -e -h -u 172.16.11.31\CITB -p CITB -i CMD /c shutdown.exe -f -s -t 10")
WScript.sleep 1000