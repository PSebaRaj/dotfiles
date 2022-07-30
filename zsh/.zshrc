# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export TERM=xterm-256color

#export LC_ALL=en_IN.UTF-8
#export LANG=en_IN.UTF-8

#ZSH_THEME="agnoster"
#source $ZSH/oh-my-zsh.sh

setopt appendhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP


# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/.zsh-functions"

# Normal files to source
zsh_add_file ".zsh-prompt"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# Case-Insensitive autocompletion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# my personal scripts
PATH=${PATH}:$XDG_CONFIG_HOME/bin

# easy of use
alias nv="nvim"
alias nvimrc="nvim ~/.psebconfig/nvim"
alias tn="tmux -u -f ~/.psebconfig/tmux/tmux.conf new -s"
alias ta="tmux -u -f ~/.psebconfig/tmux/tmux.conf attach -t"
alias top="vtop --theme nord"
alias oldtop="/usr/bin/top"

alias lines="git ls-files | xargs wc -l"
alias hg="history | grep"
alias weather="curl http://wttr.in/"

alias mv="mv -i"
alias history='fc -l 1'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias md='mkdir -p'
# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# shell scripts
alias lsalias=". listAllAlias.sh"
alias peek=". peek.sh"
alias cl=". cd_ll.sh"
alias up=". upDir.sh"
alias count=". countFile.sh"
alias todo=". findTODO.sh"
alias extract=". extractAll.sh"
alias findfiles=". findfiles.sh"
alias chtsh=". tmux-cht.sh"

alias zoo="zsh $XDG_CONFIG_HOME/bin/zooactions.sh"

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=001'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=002'
ZSH_HIGHLIGHT_STYLES[alias]='fg=012'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=012'
ZSH_HIGHLIGHT_STYLES[function]='fg=012'
ZSH_HIGHLIGHT_STYLES[command]='fg=012'
ZSH_HIGHLIGHT_STYLES[precommand]=none
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=none
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[globbing]=none
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=012'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=002'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=002'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=002'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=002'
ZSH_HIGHLIGHT_STYLES[assign]=none

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=003'



