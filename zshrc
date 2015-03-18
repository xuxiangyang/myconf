export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(docker git osx ruby github golang rails bundler rvm rake)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

export LANG=en_US.UTF-8

alias ll='ls -al'
alias ss='rails s'
alias sc='rails c'
alias e='emacs-24.3'
alias tailf='tail -f'
alias gck="git checkout"
alias gci="git commit"

memcached -d

#emacs 键位设定
bindkey -e

#rake bug
alias rake='noglob rake'

export TERM=xterm-256color

# docker
export DOCKER_CERT_PATH=/Users/xxy/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376    

#Gopath, use gopm to mannge multi projects
export GOPATH=$HOME/.go_path
export PATH=$GOPATH/bin:$PATH
alias g='gom'
