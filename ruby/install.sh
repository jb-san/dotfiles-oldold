#!/bin/sh

if test ! $(which rvm)
then
  echo "  Installing rvm for you."
  curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
fi