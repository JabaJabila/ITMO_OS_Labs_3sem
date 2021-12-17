cd c:/LAB6
wmic os get caption, version > OSversion.txt
wmic computersystem get totalphysicalmemory > memINFO.txt
wmic os get freephysicalmemory >> memINFO.txt
wmic logicaldisk list brief > diskINFO.txt
md TEST
xcopy * TEST
cd TEST
TIMEOUT /t 1
copy * allInOne.txt
for /f "skip=1" %%a in ('dir /b/a-d/o-d/t:c') do del %%a