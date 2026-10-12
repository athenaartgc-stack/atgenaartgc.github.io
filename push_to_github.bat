@echo off
setlocal
cd /d "%~dp0"
where git >nul 2>&1
if errorlevel 1 (
  echo Git was not found. Open this repository in GitHub Desktop and use Push origin.
  pause
  exit /b 1
)
git diff --quiet
if errorlevel 1 goto uncommitted
git diff --cached --quiet
if errorlevel 1 goto uncommitted
for /f "delims=" %%A in ('git ls-files --others --exclude-standard') do goto uncommitted
git pull --ff-only
if errorlevel 1 goto failed
git push origin main
if errorlevel 1 goto failed
echo Published commits sent to GitHub. Allow GitHub Pages time to deploy.
pause
exit /b 0
:uncommitted
echo Review and commit your changes in GitHub Desktop first, then run this again.
pause
exit /b 1
:failed
echo Update stopped. No forced merge or forced push was performed.
echo Open GitHub Desktop to review the error.
pause
exit /b 1
