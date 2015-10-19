export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git bundler osx rake ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export PYTHON='/usr/bin/python2.7'
export FIREFOX_BIN=~/Applications/Firefox.app/Contents/MacOS/firefox-bin

export LANG=en_US.UTF-8

alias ll='ls -al'
alias ss='rails s'
alias sc='rails c'
alias e='emacs'
alias tailf='tail -f'
alias gck="git checkout"
alias gci="git commit"
alias gb=$GOPATH/bin/gb
alias py='python3'

#emacs 键位设定
bindkey -e

#rake bug
alias rake='noglob rake'

export TERM=xterm-256color

#Gopath, use gopm to mannge multi projects
export GOPATH=$HOME/Documents/go_project
export PATH=$GOPATH/bin:$PATH
alias setgopath='export GOPATH=`godep path`:$GOPATH'
alias unsetgopath='export GOPATH=$HOME/Documents/go_project'

export BUNDLER_EDITOR=subl
#[[ -s "/Users/xxy/.gvm/scripts/gvm" ]] && source "/Users/xxy/.gvm/scripts/gvm"
source ~/.nvm/nvm.sh


#docker
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/xxy/.docker/machine/machines/default
export DOCKER_MACHINE_NAME=default
