#!/bin/bash

echo "🚀 DevSecOps & Cloud Infrastructure Website - Quick Start"
echo "=================================================="
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "⚠️  Node.js is not installed (optional for local development)"
fi

echo "✅ Prerequisites check passed"
echo ""

# Menu
echo "What would you like to do?"
echo "1) Start local development server"
echo "2) Build for production"
echo "3) Initialize Git repository"
echo "4) Deploy to Cloudflare Pages"
echo ""

read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Starting development server on http://localhost:8000..."
        if command -v python3 &> /dev/null; then
            python3 -m http.server 8000
        else
            python -m http.server 8000
        fi
        ;;
    2)
        echo "Building project..."
        mkdir -p dist
        cp -r . dist/
        rm -rf dist/node_modules
        rm -rf dist/.git
        echo "✅ Build complete! Files ready in 'dist' directory"
        ;;
    3)
        echo "Initializing Git repository..."
        git init
        git add .
        git commit -m "Initial commit: DevSecOps portfolio website"
        echo "✅ Git repository initialized"
        echo ""
        echo "📌 Next steps:"
        echo "1. Create a repository on GitHub: https://github.com/new"
        echo "2. Run: git remote add origin https://github.com/YOUR-USERNAME/devsecops-website.git"
        echo "3. Run: git push -u origin main"
        ;;
    4)
        echo "🌐 Cloudflare Pages deployment"
        echo ""
        echo "Prerequisites:"
        echo "1. Push your code to GitHub (see option 3)"
        echo "2. Have a Cloudflare account: https://www.cloudflare.com"
        echo ""
        echo "Steps:"
        echo "1. Go to: https://dash.cloudflare.com/pages"
        echo "2. Click: Create a project → Connect to Git"
        echo "3. Select: devsecops-website repository"
        echo "4. Build settings:"
        echo "   - Framework: None"
        echo "   - Build command: (leave empty)"
        echo "   - Build output: (leave empty)"
        echo "5. Click: Save and Deploy"
        echo ""
        echo "Your site will be live in 2-5 minutes! 🎉"
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
