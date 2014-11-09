export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

plugins=(git osx ruby github golang rails bundler)

export LANG=en_US.UTF-8

alias ll='ls -al'
alias ss='rails s'
alias sc='rails c'
alias e='emacs-24.3'

memcached -d

#emacs 键位设定
bindkey -e
