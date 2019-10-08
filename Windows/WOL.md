REM   RemoteBootScript_SGK 03072018
REM   https://github.com/duckduckuk/WNScripts.git
REM   wolcmd [MAC] [IP] [subnet] [remote port (default is 7)]
@Echo off
Echo. 
Echo.
Echo. Sending Boot Command...
Echo.
Echo. A426
wolcmd 4C-CC-6A-0A-8E-DE 172.16.10.8 255.255.252.0 7
Echo. A427
wolcmd 4C-CC-6A-0A-8E-2E 172.16.10.46 255.255.252.0 7
Echo. A428
wolcmd 4C-CC-6A-0A-90-3A 172.16.10.15 255.255.252.0 7
Echo. A429
wolcmd 4C-CC-6A-0A-8F-D9 172.16.10.16 255.255.252.0 7
Echo. A430
wolcmd 4C-CC-6A-0A-8E-8F 172.16.10.17 255.255.252.0 7


pause
