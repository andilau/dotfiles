dotfiles (Andi Lau)
===================

Dotfiles of Andi Lau.
[Hacker News thread](https://news.ycombinator.com/item?id=11070797)

```sh
git clone --bare git://github.com/andilau/dotfiles.git ~/.dotfiles
alias dit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
dit config --local status.showUntrackedFiles no
```

## Setup

```sh
git init --bare $HOME/.dotfiles
alias dit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
dit config --local status.showUntrackedFiles no
echo "alias dit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
echo "alias dit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## Tools
-----

*   [Bash](https://www.gnu.org/software/bash/) — GNU Bourne-Again Shell
*   [Git](http://git-scm.com/) — Distributed version control system
*   [GnuPG](http://www.gnupg.org/) — GNU Privacy Guard
*   [ncmpcpp](http://ncmpcpp.rybczak.net/) — ncurses music player client
*   [tmux](http://tmux.sourceforge.net/) — Terminal multiplexer
*   [Vim](http://www.vim.org/) — Vi IMproved, a text editor
*   [MacVim](https://github.com/macvim-dev/macvim) — MacVim
*   [vimpc](https://github.com/boysetsfrog/vimpc/) — Client for mpd with vi-like key bindings
*   [Zsh](http://zsh.sourceforge.net) - Zsh, the Z shell
