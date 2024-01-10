#!/bin/bash

git submodule update --remote gitleaks

cd gitleaks || exit

make build

cd .. || exit
