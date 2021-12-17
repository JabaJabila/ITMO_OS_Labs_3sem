cd c:/LAB6/task3
chcp 855
sc queryex type=service | find "SERVICE_NAME" > services.txt
sc stop wpnService
timeout /t 5
sc queryex type=service | find "SERVICE_NAME" > services2.txt
sc start wpnService
diff.bat