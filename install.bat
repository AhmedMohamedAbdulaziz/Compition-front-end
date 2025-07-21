@echo off
title Veented Construction Website Installer

echo.
echo 🏗️  Veented Construction Website Installer
echo ==========================================
echo.

REM Check if index.html exists
if not exist "index.html" (
    echo ❌ Error: index.html not found in current directory
    echo Please make sure you're in the correct folder with the website files.
    pause
    exit /b 1
)

echo ✅ Found index.html
echo.

echo 🚀 Choose installation method:
echo 1) Open directly in browser (Simple)
echo 2) Start Python web server (Recommended)
echo 3) Start PHP web server
echo 4) Start Node.js live-server
echo 5) Just show me the file location
echo.

set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto open_browser
if "%choice%"=="2" goto python_server
if "%choice%"=="3" goto php_server
if "%choice%"=="4" goto node_server
if "%choice%"=="5" goto show_location
goto invalid_choice

:open_browser
echo 📂 Opening website directly in browser...
set "current_dir=%cd%"
set "file_path=file:///%current_dir:\=/%/index.html"
start "" "%file_path%"
echo ✅ Website opened in your default browser!
goto end

:python_server
echo 🐍 Checking for Python...
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo 🐍 Starting Python web server...
    echo 🌐 Website will be available at: http://localhost:8000
    echo 📝 Press Ctrl+C to stop the server
    echo.
    timeout /t 2 >nul
    start "" "http://localhost:8000"
    python -m http.server 8000
) else (
    python3 --version >nul 2>&1
    if %errorlevel% equ 0 (
        echo 🐍 Starting Python 3 web server...
        echo 🌐 Website will be available at: http://localhost:8000
        echo 📝 Press Ctrl+C to stop the server
        echo.
        timeout /t 2 >nul
        start "" "http://localhost:8000"
        python3 -m http.server 8000
    ) else (
        echo ❌ Python not found. Please install Python or choose another option.
        echo 💡 Download Python from: https://python.org
    )
)
goto end

:php_server
echo 🐘 Checking for PHP...
php --version >nul 2>&1
if %errorlevel% equ 0 (
    echo 🐘 Starting PHP web server...
    echo 🌐 Website will be available at: http://localhost:8000
    echo 📝 Press Ctrl+C to stop the server
    echo.
    timeout /t 2 >nul
    start "" "http://localhost:8000"
    php -S localhost:8000
) else (
    echo ❌ PHP not found. Please install PHP or choose another option.
    echo 💡 Download PHP from: https://php.net
)
goto end

:node_server
echo 📦 Checking for Node.js...
npm --version >nul 2>&1
if %errorlevel% equ 0 (
    echo 📦 Checking for live-server...
    live-server --version >nul 2>&1
    if %errorlevel% equ 0 (
        echo 🚀 Starting live-server...
        live-server
    ) else (
        echo 📥 Installing live-server...
        npm install -g live-server
        if %errorlevel% equ 0 (
            echo 🚀 Starting live-server...
            live-server
        ) else (
            echo ❌ Failed to install live-server. You may need to run as administrator.
        )
    )
) else (
    echo ❌ Node.js/npm not found. Please install Node.js or choose another option.
    echo 💡 Download Node.js from: https://nodejs.org
)
goto end

:show_location
echo 📁 Website location: %cd%\index.html
echo 💡 You can double-click the index.html file to open it in your browser
echo 💡 Or drag and drop it into any web browser window
goto end

:invalid_choice
echo ❌ Invalid choice. Please run the script again and choose 1-5.
goto end

:end
echo.
echo 🎉 Installation complete!
echo.
echo 📚 Next steps:
echo • Customize the website by editing index.html
echo • Replace placeholder content with your company info
echo • Add your own images to make it unique
echo • Deploy to a web hosting service when ready
echo.
echo 📖 Check README.md for detailed customization instructions
echo.
echo Happy building! 🏗️
echo.
pause