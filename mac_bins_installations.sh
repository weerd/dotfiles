#!/usr/bin/env bash


# Create temporary directory to store downloaded files
mkdir ~/installation_temp
cd ~/installation_temp


# Installing Composer
# To install Composer via Homebrew, we need to also have PHP installed via 
# Homebrew as well. Since Virtual Machines are all the rage, no need for 
# overriding system PHP for now, so lets just install it directly.

curl -sS https://getcomposer.org/installer | php
mv ~/installation_temp/composer.phar /usr/local/bin/composer


# Delete temporary directory.
rmdir ~/installation_temp