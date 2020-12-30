#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp {.bashrc,.tmux.conf,.vimrc,.zshrc} ~/

"${DIR}/setup_vim.sh"
