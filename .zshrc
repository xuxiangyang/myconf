export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

plugins=(git osx ruby github golang rails bundler rvm rake)

export LANG=en_US.UTF-8

alias ll='ls -al'
alias ss='rails s'
alias sc='rails c'
alias e='emacs-24.3'
alias tailf='tail -f'

memcached -d

#emacs 键位设定
bindkey -e

#rake bug
alias rake='noglob rake'

export TERM=xterm-256color
