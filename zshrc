export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git bundler osx rake ruby docker web-search catimg wd golang copydir mix-fast elixir bd)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/depot_tools:$PATH
export PATH=/Users/xxy/.vimpkg/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export FIREFOX_BIN=~/Applications/Firefox.app/Contents/MacOS/firefox-bin

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ll='ls -al'
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
export PATH=/usr/local/go/bin:$PATH

export BUNDLER_EDITOR=subl
#[[ -s "/Users/xxy/.gvm/scripts/gvm" ]] && source "/Users/xxy/.gvm/scripts/gvm"
source ~/.nvm/nvm.sh

#npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"


#python
export PATH=/usr/local/anaconda2/bin:$PATH

setopt ignoreeof

if [ -f ~/.lenvrc ]; then
  source ~/.lenvrc
fi

alias pi='pod install --no-repo-update'
unsetopt ignoreeof

alias octave=octave-cli

#open_resty
PATH=/usr/local/openresty/nginx/sbin:$PATH

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#mix aotuocomplete
source ~/.mix_autocomplete.zsh
source /usr/local/anaconda2/bin/aliyun_zsh_complete.sh
