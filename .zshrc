#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt
autoload -Uz promptinit
promptinit
prompt agnoster

# Exports
export EDITOR=nvim
export VISUAL=nvim
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH" 
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnubin:$MANPATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# Shortcuts
alias d="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias g="/usr/bin/git"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dp="cd ~/Projects"
alias h="history -30"
alias j="jobs"
alias vi="nvim"
alias v="nvim"
alias e=$EDITOR
alias ez="$EDITOR $HOME/.zshrc"
alias ev="$EDITOR $HOME/.config/nvim/init.vim"
alias evm="$EDITOR $HOME/.config/nvim/mappings.vim"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; cd ~/.zprezto && git pull && git submodule update --init --recursive'
alias saysay="say --voice "'"?"'" | cut -d "'" "'" -f 1 | xargs -I {} say --voice {} "'"Hello, my name is {}."'""

# dotfiles
alias dit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Set vi mode
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey '^R' history-incremental-search-backward

# FZF
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
