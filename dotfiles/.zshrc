ZSH=$HOME/.oh-my-zsh

ZSH_THEME="eber"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)

source $ZSH/oh-my-zsh.sh

#autoload -Ucolors && colors

eval `dircolors $HOME/.dir_colors`


# Lines configured by zsh-newuser-install
#PROMPT='[%n@%m:%1/]%# '
PROMPT='%{%f%k%b%}[%{%K{black}%B%F{green}%}%n%{%B%F{blue}%}@%m%{%B%F{cyan}%}:%{%b%F{yellow}%K{black}%}%1/%{%f%k%b%}]%# '
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '~/.zshrc'

source ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char
[[ -n ${key[PageDown]}  ]]  && bindkey  "${key[PageDown]}" down-line-or-history
[[ -n ${key[PageUp]}    ]]  && bindkey  "${key[PageUp]}"  up-line-or-history

#autoload -Uz compinit
#compinit
# End of lines added by compinstall

#autoload -U promptinit
#promptinit

alias l='ls --color'
alias ls='ls --color'
alias sbl='sublime_text'
alias sub='sublime_text'
alias feh='feh -Tdefault'
alias vi='vim'

export PATH=$PATH:~/bin
export BROWSER=chromium
export EDITOR=vim
