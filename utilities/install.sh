#!/usr/bin/env sh

echo "0 * * * * ~/.dotfiles/utilies/downloads_tidier" >> /var/spool/cron/"$(whoami)"
