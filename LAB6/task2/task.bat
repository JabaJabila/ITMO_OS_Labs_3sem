cd c:\LAB6\task2
net share temp="C:\LAB6\temp"
net use * \\%computername%\temp
schtasks /create /f /tn CopyTask /tr c:\LAB6\task2\copy.exe /sc minute