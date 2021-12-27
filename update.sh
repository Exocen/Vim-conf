#!/bin/bash -
#===============================================================================
#
#          FILE: update.sh
#
#         USAGE: ./update.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 09/20/2020 21:21
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

LOCAL=`dirname "$(readlink -f "$0")"`
cd "$LOCAL"
python3 ~/.vim_runtime/update_plugins.py
git remote add upstream https://github.com/amix/vimrc.git
git fetch upstream
cd -
