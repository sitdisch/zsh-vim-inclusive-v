# Vim's inclusive v

## Table of Contents

- [Example](#example)
- [Explanation](#explanation)
- [Installation](#installation)
  - [antigen](#antigen)
  - [manually](#manually)
  - [zgen](#zgen)
  - [zplug](#zplug)
  - [zplugin](#zplugin)
- [About the Author](#about-the-author)
<p></p>

## Example

![Animated demonstration](https://raw.githubusercontent.com/sitdisch/zsh-vim-inclusive-v/gh-pages/assets/images/vim_inclusive_v.gif)
1. shows the difference between the `db` and `dvb` key-sequence
2. shows the difference between the `dFg` and `dvFg` key-sequence
<p></p>

## Explanation

This is a zsh plugin. It enables Vim's inclusive **v** in the terminal for backward operations. That means, if you are in the vi-command-mode (vicmd) of the shell and you press **v** after an operator and before a motion command, then you force the operator to include the current char under the cursor in the backward operation too.

* general key-sequence-structure: `{operator}v{movement}`
  * {operator}: `d, y, c,...`
  * {movement}: `b, B, h, ^, 0, |, ge, gE, F, T`
    * consider: other movements are not included currently
<p></p>

Other features of the inclusive/exclusive **v** are not enabled in this widget. Hope you enjoy it anyway.

## Installation

Use one of the following install-procedures to get this zsh-plugin.

### antigen
```zsh
antigen bundle sitdisch/zsh-vim-inclusive-v
antigen apply
```

### manually
Clone this repository to your destination
```zsh
% git clone https://github.com/sitdisch/zsh-vim-inclusive-v
```
and then source the zsh-file in your zshrc file.
```zsh
% source .../zsh-vim-inclusive-v/zsh-vim-inclusive-v.zsh
```

### zgen
```zsh
zgen load sitdisch/zsh-vim-inclusive-v
zgen save
```

### zplug
```zsh
zplug 'sitdisch/zsh-vim-inclusive-v'
zplug install
zplug load --verbose
```

### zplugin
```zsh
zplugin light sitdisch/zsh-vim-inclusive-v
```

That's it. You don't have to map any new keybindings or adapt the vi-modes further.

P.s. the visual-mode with **v** is still working. 

## About the Author

|Author   |Source             |
|---------------|-------------------------------------------------------|
|sitdisch | <https://github.com/sitdisch/zsh-vim-inclusive-v>   |

Copyright (c) 2019 sitdisch
