#!/bin/bash

rm -r gitleaks

rm .git/hooks/pre-commit

sed -i '/\/gitleaks/d' .gitignore

git config -f .gitmodules --remove-section submodule.gitleaks
