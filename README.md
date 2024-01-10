# Gitleaks Installation Guide
This guide outlines the steps to install Gitleaks and set up a pre-commit hook for scanning sensitive data in your Git repository using a Bash script.

## Install
Run the Installation Script:
Use the following command to download and execute the installation script:

``` curl https://raw.githubusercontent.com/lyalyukev/pre-commit/main/install.sh | sh ```


### The script performs the following tasks:

+ Downloads Gitleaks as a submodule into your repository.
+  Adds the submodule entry to .gitignore.
+ Builds the Gitleaks binary suitable for your OS and architecture.
+ Downloads a git pre-commit hook script.
+ Makes the hook executable.
+ Sets the gitleaks.enable option in Git configuration.


## Update Gitleaks
``` curl https://raw.githubusercontent.com/lyalyukev/pre-commit/main/update.sh | sh ```

## Delete Gitleaks from your repo
``` curl  https://raw.githubusercontent.com/lyalyukev/pre-commit/main/delete.sh | sh ```
