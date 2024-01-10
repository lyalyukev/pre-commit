#!/bin/bash

if [ -d .git ]; then
    
    # Download Gitleaks as submodule
    git submodule add -f https://github.com/zricethezav/gitleaks.git gitleaks
    
    # Add submodule to .gitignore    
    echo /gitleaks > .gitignore

    # Build binary file gitleaks for our os and arch
    make build

    # Download git pre-commit hook
    wget -P .git/hooks https://raw.githubusercontent.com/lyalyukev/pre-commit/main/pre-commit

    # Make hook executable
    chmod +x .git/hooks/pre-commit

    # Set git option gitleaks.enable
    git config --local gitleaks.enable true
    
else
    echo "You should init git repo before install Gitleaks"
    exit 1 
fi
