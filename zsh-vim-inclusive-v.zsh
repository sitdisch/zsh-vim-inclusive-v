# 
# VIM'S INCLUSIVE V
# 
# Author: sitdisch <sitdisch@gmx.de>
# Source: https://github.com/sitdisch/zsh-vim-inclusive-v
# 
# Copyright (c) 2019 sitdisch

# 
# EXPLANATION: 
# 
# This is a zsh plugin. It enables Vim's inclusive v in the terminal for 
# backward operations. That means, if you are in the vi-command-mode (vicmd) 
# of the shell and you press v after an operator and before a motion command,
# then you force the operator to include the current char under the cursor in the
# backward operation too.
# 
# general key-sequence-structure: `{operator}v{movement}`
#   - {operator}: `d, y, c,...`
#   - {movement}: `b, B, h, ^, 0, |, ge, gE, F, T`
#     - consider: other movements are not included currently

# Other features of the inclusive/exclusive v are not enabled in this widget. 
# Hope you enjoy it anyway.

# 
# CODE:
# 
inclusive-v()
{
  local PREPOSITION=$CURSOR
  read -sk key1
  if [ "$key1" = "b" ]; then
    zle vi-backward-word
  elif [ "$key1" = "B" ]; then
    zle vi-backward-blank-word
  elif [ "$key1" = "h" ]; then
    zle vi-backward-char
  elif [ "$key1" = "^" ]; then
    zle vi-first-non-blank
  elif [ "$key1" = "0" ]; then
    zle vi-beginning-of-line
  elif [ "$key1" = "|" ]; then
    zle vi-beginning-of-line
  elif [ "$key1" = "g" ]; then
    # catch ge and gE
    read -sk key2
    if [ "$key2" = "e" ]; then
      zle vi-backward-word-end
    else
      # catch gE
      zle vi-backward-blank-word-end
    fi
  elif [ "$key1" = "F" ]; then
    zle vi-find-prev-char
  elif [ "$key1" = "T" ]; then
    zle vi-find-prev-char-skip
  fi
  ((MARK= $CURSOR))
  ((CURSOR= $PREPOSITION + 1))
}

zle -N inclusive-v

bindkey -M viopp 'v' inclusive-v
