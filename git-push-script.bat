@echo off
echo ========================================
echo  Blue Dream Bokeh - GitHub Push Script
echo ========================================
echo.

echo Checking Git installation...
git --version
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed or not found in PATH
    echo Please install Git from: https://git-scm.com/download/windows
    echo Then restart PowerShell and try again
    pause
    exit /b 1
)

echo.
echo Configuring Git user...
git config user.name "XMP"
git config user.email "lanhanh64529@gmail.com"

echo.
echo Adding all files...
git add .

echo.
echo Committing changes...
git commit -m "Blue Dream Bokeh New Tab Theme - Complete Extension"

echo.
echo Pulling from remote (if needed)...
git pull origin main --allow-unrelated-histories

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo  Push completed successfully!
echo ========================================
echo Repository: https://github.com/tuananh93cp/blue-dream-bokeh-new-tab-theme
echo.
pause 