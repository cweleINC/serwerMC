cd ..
:start_timeout

git pull
git add *
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a:%%b)
git commit -m "%mydate%   %mytime%"
git push
timeout 1
goto start_timeout