#!/bin/bash

git config --global alias.la '!git config -l | grep alias | cut -c 7-'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
git config --global alias.k '!gitk'
git config --global alias.up '!git submodule sync --recursive && git submodule update --init --recursive --checkout'
git config --global alias.pullup '!git pull && git up'
