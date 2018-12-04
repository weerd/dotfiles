#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Binary Applications
# ------------------------------------------------------------------------------



source ./extras/colors



# Create temporary directory to store downloaded files
mkdir ~/installation_temp
cd ~/installation_temp



# Composer Installation
# ------------------------------------------------------------------------------
# To install Composer via Homebrew, we need to also have PHP installed via 
# Homebrew as well. Since Virtual Machines are all the rage, no need for 
# overriding system PHP for now, so lets just install it directly.

curl -sS https://getcomposer.org/installer | php
mv ~/installation_temp/composer.phar /usr/local/bin/composer

printf "\n$INFO - %s$RESET\n" "Installed binary applications."



# Delete temporary directory.
rmdir ~/installation_temp
