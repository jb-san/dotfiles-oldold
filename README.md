## JB's dotfiles
run
```
cd ~/
git clone git@github.com:jb-san/dotfiles.git

./.dotfiles/script/install
./.dotfiles/script/bootstrap
```

then  run
```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
