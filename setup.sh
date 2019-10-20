#!/usr/bin/env bash

#setup dein.vim
mkdir -p ~/.cache/dein
cd ~/.cache/deincd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
