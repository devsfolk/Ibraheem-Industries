@echo off
echo ========================================
echo  PUSHING TO GITHUB
echo ========================================
echo.
echo This will upload all files including 30 images...
echo.
pause

cd /d "%~dp0"
git push -u origin main --force

echo.
echo ========================================
if %ERRORLEVEL% EQU 0 (
    echo SUCCESS! All files pushed to GitHub
    echo.
    echo Next steps:
    echo 1. Go to: https://github.com/devsfolk/Ibraheem-Industries/settings/pages
    echo 2. Enable GitHub Pages with main branch
    echo 3. Wait 2-3 minutes
    echo 4. Visit: https://devsfolk.github.io/Ibraheem-Industries/
) else (
    echo FAILED! Check the error message above
    echo.
    echo Common issues:
    echo - Not logged into GitHub: Run 'gh auth login' first
    echo - Wrong credentials: Check your username/password
    echo - Repository doesn't exist: Verify the URL
)
echo ========================================
echo.
pause
