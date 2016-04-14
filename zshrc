export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git bundler osx rake ruby docker web-search catimg wd golang copydir)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
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

#emacs 键位设定
bindkey -e

#rake bug
alias rake='noglob rake'

export TERM=xterm-256color

#Gopath, use gopm to mannge multi projects
export GOPATH=$HOME/Documents/go_project
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
alias setgopath='export GOPATH=`godep path`:$GOPATH'
alias unsetgopath='export GOPATH=$HOME/Documents/go_project'

export BUNDLER_EDITOR=atom
#[[ -s "/Users/xxy/.gvm/scripts/gvm" ]] && source "/Users/xxy/.gvm/scripts/gvm"
source ~/.nvm/nvm.sh


#docker
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/xxy/.docker/machine/machines/default
export DOCKER_MACHINE_NAME=default
export DOCKER_TLS_VERIFY=1

#npm 
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"


#python
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

setopt ignoreeof
