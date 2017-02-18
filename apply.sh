#!/bin/bash

git config --global alias.st 'status'
git config --global alias.cl 'clone'
git config --global alias.ci 'commit'
git config --global alias.co 'checkout'
git config --global alias.br 'branch'

git config --global alias.la '!git config -l | grep alias | cut -c 7-'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
git config --global alias.k '!gitk'
git config --global alias.up '!git submodule sync --recursive && git submodule update --init --recursive --checkout'
git config --global alias.pullup '!git pull && git up'

git config --global alias.r 'reset'
git config --global alias.r1 'reset HEAD^'
git config --global alias.r2 'reset HEAD^^'
git config --global alias.rh 'reset --hard'
git config --global alias.rh1 'reset HEAD^ --hard'
git config --global alias.rh2 'reset HEAD^^ --hard'

git config --global alias.lf 'log --follow'
git config --global alias.lg 'log --graph'

git config --global merge.tool vimdiff

