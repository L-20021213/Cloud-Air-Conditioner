@ECHO on
cd coding
for /D %%i in (*) DO (
	if not %%i==.git (
			echo 删文件夹：%%i 
			rd /S /Q %%i
            del /Q /F %CD%
	)
)
Xcopy ..\build\*.* . /S /E
git add .
git commit -m "%date% %time:~0,5% update"
git push coding main --force
pause