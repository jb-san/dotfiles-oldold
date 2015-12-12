## JB's dotfiles
run
```
cd ~/
git clone git@github.com:jb-san/dotfiles.git
```

then  run
```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
