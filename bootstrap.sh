#!/bin/bash

die(){
  echo -e "\e[1;31m$1\e[m"
  exit
}

[ $SHLVL = 1 ] || die "Usage:  . $0"
# cp prevents programs from writing to the repo
cd /opt/dotfiles
cp .* ~
cp -r bin /usr/local
cp -r moonch~1 notepad2 $APPDATA 2>/dev/null
cd -

# git is very picky about the permissions
cp -r $HOMEDRIVE/dropbox/documents/.ssh ~
chmod 700 ~/.ssh/id_rsa

# Apply
. ~/.bash_profile
