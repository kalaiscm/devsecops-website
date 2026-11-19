@echo off
title DevSecOps Website - Quick Start

echo.
echo ========================================================
echo DevSecOps ^& Cloud Infrastructure Website - Quick Start
echo ========================================================
echo.

REM Check if Git is installed
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed. Please install Git first.
    echo Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git is installed
echo.

REM Menu
echo What would you like to do?
echo.
echo 1) Start local development server
echo 2) Build for production
echo 3) Initialize Git repository
echo 4) View Cloudflare Pages setup instructions
echo 5) Open project folder
echo.

set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" (
    echo.
    echo Starting development server...
    echo Open browser to: http://localhost:8000
    echo.
    python -m http.server 8000
    goto :end
)

if "%choice%"=="2" (
    echo.
    echo Building project...
    if not exist "dist" mkdir dist
    echo Copying files...
    xcopy /E /I /Y . dist\ >nul
    echo Cleaning up...
    rmdir /s /q dist\node_modules 2>nul
    rmdir /s /q dist\.git 2>nul
    echo.
    echo [OK] Build complete! Files are in 'dist' directory
    echo.
    pause
    goto :end
)

if "%choice%"=="3" (
    echo.
    echo Initializing Git repository...
    git init
    git add .
    git commit -m "Initial commit: DevSecOps portfolio website"
    echo.
    echo [OK] Git repository initialized
    echo.
    echo Next steps:
    echo 1. Create repository on GitHub: https://github.com/new
    echo 2. Run: git remote add origin https://github.com/YOUR-USERNAME/devsecops-website.git
    echo 3. Run: git push -u origin main
    echo.
    pause
    goto :end
)

if "%choice%"=="4" (
    echo.
    echo ========================================================
    echo CLOUDFLARE PAGES DEPLOYMENT GUIDE
    echo ========================================================
    echo.
    echo Step 1: Push code to GitHub
    echo - See option 3 above to initialize git
    echo.
    echo Step 2: Deploy to Cloudflare Pages
    echo - Go to: https://dash.cloudflare.com/pages
    echo - Click: Create a project
    echo - Select: Connect to Git
    echo - Choose: devsecops-website repository
    echo.
    echo Step 3: Configure build settings
    echo - Framework: None
    echo - Build command: (leave empty)
    echo - Build output directory: (leave empty)
    echo.
    echo Step 4: Deploy
    echo - Click: Save and Deploy
    echo - Wait 2-5 minutes for deployment
    echo - Your site will be at: https://devsecops-website.pages.dev
    echo.
    echo [TIP] For more details, see DEPLOYMENT_GUIDE.md
    echo.
    pause
    goto :end
)

if "%choice%"=="5" (
    echo.
    echo Opening project folder...
    start .
    goto :end
)

echo Invalid choice. Exiting.

:end
pause
