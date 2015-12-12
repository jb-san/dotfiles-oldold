#!/bin/sh
#
# Fonts
#
# This copies the fonts in this folder to the default fonts folder

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Menlo for Powerline font."
  bash -c "cp *.ttf /Library/Fonts/"  > /tmp/fonts-install.log
fi

exit 0
