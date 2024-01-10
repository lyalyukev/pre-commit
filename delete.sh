#!/bin/bash

rm -r gitleaks

rm .git/hooks/pre-commit

grep -v '/gitleaks' .gitignore > temp_gitignore && mv temp_gitignore .gitignore
