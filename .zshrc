# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob notify
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/andi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export EDITOR=nvim
export VISUAL=nvim
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH" 
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnubin:$MANPATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# https://github.com/desyncr/auto-ls#customization
auto-ls-exa () {
  exa -a --group-directories-first --classify
}

# https://github.com/desyncr/auto-ls#configuration
AUTO_LS_COMMANDS=(exa)
AUTO_LS_NEWLINE=false
AUTO_LS_CHPWD=false

fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://wiki.archlinux.org/index.php/fzf#zsh
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh
# https://github.com/junegunn/fzf#layout
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# https://github.com/junegunn/fzf#respecting-gitignore
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# https://gist.github.com/anonymous/a9055e30f97bd19645c2
alias ls='exa --group-directories-first --classify'
alias l='exa --group-directories-first --classify'
alias la='exa -a --group-directories-first --classify'
alias ll='exa -l --group-directories-first --classify'
alias lla='exa -al --group-directories-first --classify'
alias lal='exa -al --group-directories-first --classify'
alias lt='exa -T --group-directories-first --classify'
alias lta='exa -aT --group-directories-first --classify'
alias lat='exa -aT --group-directories-first --classify'

alias ccd=$(git rev-parse --show-toplevel)


alias e=$EDITOR
alias ez="$EDITOR $HOME/.zshrc"
alias h='history -50'
alias saysay="say --voice "'"?"'" | cut -d "'" "'" -f 1 | xargs -I {} say --voice {} "'"Hello, my name is {}."'""



source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

autoload -Uz promptinit
  promptinit
  prompt agnoster

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/libpq/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias dotfiles='/usr/bin/git --git-dir=/Users/andi/.dotfiles/ --work-tree=/Users/andi'
