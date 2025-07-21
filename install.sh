#!/bin/bash

# Veented Construction Website Installation Script
# This script helps you quickly set up and run the website

echo "🏗️  Veented Construction Website Installer"
echo "=========================================="
echo ""

# Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found in current directory"
    echo "Please make sure you're in the correct folder with the website files."
    exit 1
fi

echo "✅ Found index.html"
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to open browser
open_browser() {
    if command_exists xdg-open; then
        xdg-open "$1"  # Linux
    elif command_exists open; then
        open "$1"      # macOS
    elif command_exists start; then
        start "$1"     # Windows (Git Bash)
    else
        echo "Please manually open your browser and go to: $1"
    fi
}

echo "🚀 Choose installation method:"
echo "1) Open directly in browser (Simple)"
echo "2) Start Python web server (Recommended)"
echo "3) Start PHP web server"
echo "4) Start Node.js live-server"
echo "5) Just show me the file location"
echo ""

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "📂 Opening website directly in browser..."
        current_dir=$(pwd)
        file_path="file://$current_dir/index.html"
        open_browser "$file_path"
        echo "✅ Website opened in your default browser!"
        ;;
    
    2)
        if command_exists python3; then
            echo "🐍 Starting Python 3 web server..."
            echo "🌐 Website will be available at: http://localhost:8000"
            echo "📝 Press Ctrl+C to stop the server"
            echo ""
            sleep 2
            open_browser "http://localhost:8000"
            python3 -m http.server 8000
        elif command_exists python; then
            echo "🐍 Starting Python web server..."
            echo "🌐 Website will be available at: http://localhost:8000"
            echo "📝 Press Ctrl+C to stop the server"
            echo ""
            sleep 2
            open_browser "http://localhost:8000"
            python -m SimpleHTTPServer 8000
        else
            echo "❌ Python not found. Please install Python or choose another option."
        fi
        ;;
    
    3)
        if command_exists php; then
            echo "🐘 Starting PHP web server..."
            echo "🌐 Website will be available at: http://localhost:8000"
            echo "📝 Press Ctrl+C to stop the server"
            echo ""
            sleep 2
            open_browser "http://localhost:8000"
            php -S localhost:8000
        else
            echo "❌ PHP not found. Please install PHP or choose another option."
        fi
        ;;
    
    4)
        if command_exists npm; then
            echo "📦 Checking for live-server..."
            if command_exists live-server; then
                echo "🚀 Starting live-server..."
                live-server
            else
                echo "📥 Installing live-server..."
                npm install -g live-server
                if [ $? -eq 0 ]; then
                    echo "🚀 Starting live-server..."
                    live-server
                else
                    echo "❌ Failed to install live-server. You may need to run with sudo or as administrator."
                fi
            fi
        else
            echo "❌ Node.js/npm not found. Please install Node.js or choose another option."
        fi
        ;;
    
    5)
        current_dir=$(pwd)
        echo "📁 Website location: $current_dir/index.html"
        echo "💡 You can double-click the index.html file to open it in your browser"
        echo "💡 Or drag and drop it into any web browser window"
        ;;
    
    *)
        echo "❌ Invalid choice. Please run the script again and choose 1-5."
        exit 1
        ;;
esac

echo ""
echo "🎉 Installation complete!"
echo ""
echo "📚 Next steps:"
echo "• Customize the website by editing index.html"
echo "• Replace placeholder content with your company info"
echo "• Add your own images to make it unique"
echo "• Deploy to a web hosting service when ready"
echo ""
echo "📖 Check README.md for detailed customization instructions"
echo ""
echo "Happy building! 🏗️"