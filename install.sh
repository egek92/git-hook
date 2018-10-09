#!/bin/sh

# create hooks directory for git template
mkdir -p ~/.git/hooks

# create pre-commit script
touch ~/.git/hooks/pre-commit
chmod a+x ~/.git/hooks/pre-commit

# init template directory
git config --global init.templatedir '~/.git_template'