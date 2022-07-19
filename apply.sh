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

git config --global alias.up '!git submodule update --init --recursive'
git config --global alias.upc '!git submodule update --init --recursive --checkout'
git config --global alias.pullup '!git pull && git up'
git config --global alias.pullupc '!git pull && git upc'

git config --global alias.bf '!git checkout -b $1 && git push -u origin '
git config --global alias.urri 'submodule update --recursive --rebase'

git config --global alias.r 'reset'
git config --global alias.r1 'reset HEAD^'
git config --global alias.r2 'reset HEAD^^'
git config --global alias.rh 'reset --hard'
git config --global alias.rh1 'reset HEAD^ --hard'
git config --global alias.rh2 'reset HEAD^^ --hard'

git config --global alias.lf 'log --follow'
git config --global alias.lg 'log --graph --full-history --color --date=short --pretty=format:"%x1b[33m%h%x09%x09%x1b[34m%ad%x09%an%x1b[32m%d%x1b[0m%x1b[0m%x09%s"'

git config --global alias.cr '!git clean -dff && git rh &&  git submodule foreach --recursive "git clean -dff && git rh"'
git config --global alias.crx '!git clean -dffx && git rh &&  git submodule foreach --recursive "git clean -dffx && git rh"'

git config --global merge.tool vimdiff
git config --global diff.tool vimdiff
git config --global core.editor vim

git config --global --replace-all pull.ff only
