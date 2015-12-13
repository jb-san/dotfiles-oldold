#!/bin/zsh
if [ ! -d ~/.zprezto ]
  then
    echo "Installing zpresto and setting zshell as default shell"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    setopt EXTENDED_GLOB
      for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
      done
    chsh -s /bin/zsh

    rm "${ZDOTDIR:-$HOME}/.zpreztorc"
    rm "${ZDOTDIR:-$HOME}/.zshrc"
fi;
