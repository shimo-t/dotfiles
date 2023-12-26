# My dotfiles

![Static Badge](https://img.shields.io/badge/Ubuntu-22.04-E95420?logo=ubuntu)
![Static Badge](https://img.shields.io/badge/macOS-Sonoma-000000?logo=macos)

![Static Badge](https://img.shields.io/badge/Vim--019733?logo=vim)
![Static Badge](https://img.shields.io/badge/tmux--1BB91F?logo=tmux)
![Static Badge](https://img.shields.io/badge/fish--blue)

This repository contains my dotfiles for OSX / Ubuntu.

## Install

```
$ git clone https://github.com/shimo-t/dofiles $HOME/dotfiles
$ cd $HOME/dotfiles
```

## Makefile

```
$ make help
clean                          Remove the dotfiles and this repo
deploy                         Create symlink to home directory
help                           Self-documented Makefile
init                           Setup environment settings
install                        Run make deploy & init
list                           Show dotfiles in this repo
```

```
$ make install
```
