#!/bin/bash

cd ..

mv .tmux.conf .tmux.conf.dotfilesbak
ln -s dotfiles/tmux/tmux.conf.ln .tmux.conf

mv .gitconfig .gitconfig.dotfilesbak
ln -s dotfiles/git/gitconfig.ln .gitconfig
ln -s dotfiles/git/git_aliases.ln .git_aliases

mv .vim .vim.dotfilesbak
mv .vimrc .vimrc.dotfilesbak
ln -s dotfiles/vi/vim.ln .vim
ln -s dotfiles/vi/vimrc.ln .vimrc
