#!/usr/bin/env bash
#==============================================================================
# Copyright SpyceTek Inc. or its affiliates. All Rights Reserved.
#==============================================================================

# Make sure this script is run by root or with sudo
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

yum install -y php-apcu

# Update composer
composer.phar selfupdate

# Make composer alias, if not exists
COMPOSER_ALIAS=/usr/local/bin/composer
if [ ! -f "$COMPOSER_ALIAS" ]; then
  ln -s /usr/bin/composer.phar $COMPOSER_ALIAS
fi

# Install Supervisor
# NOT TESTED! Copied from aws-eb-custom-platform-aep script
# # Somehow supervisor is installed to /usr/local/bin, when installed from this script.
# pip install supervisor
# /usr/local/bin/echo_supervisord_conf > /etc/supervisord/supervisord.conf
# mkdir -p /etc/supervisord/conf.d
# # Change log file location to /var/log/supervisord.log, and include other ini files.
# sed -i -E \
#  -e "s#^[;[:space:]]*logfile=[^;]*(;.*)?#logfile=/var/log/supervisord.log \1#" \
#  -e "s#;\[include\]#[include]#" \
#  -e "s#^[;[:space:]]*files[[:space:]]*=[^;]*(;.*)?#files=/etc/supervisord/conf.d/*.ini \1#" \
#  /etc/supervisord/supervisord.conf
# # /etc/supervisord/supervisord is already copied from builder/platform-uploads directory
# mv /etc/supervisord/supervisord /etc/init.d/supervisord
# chmod 755 /etc/init.d/supervisord
# # Ensure to turn off in order to let the user of this platform to decide.
# chkconfig supervisord off
