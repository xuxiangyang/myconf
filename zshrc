export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(wd git z)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/jadx/bin/:$PATH
export PATH=/usr/local/opt/inetutils/libexec/gnubin:$PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export KEYTIMEOUT=1
export EDITOR=vim
export VISUAL=vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ll='ls -al'
alias sc='rails c'
alias e='emacs -nw'
alias v='nvim'
alias tailf='tail -f'
alias gck="git checkout"
alias gci="git commit"
alias git_pull_dir="ls -d */ | xargs -I{} git -C {} pull"
alias ctags="/usr/local/bin/ctags"

# emacs 键位设定
bindkey -e

#rake bug
alias rake='noglob rake'

export TERM=screen-256color

# Go
export GOPATH=$HOME/Documents/go_project
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

alias gb=$GOPATH/bin/gb

# sublime
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export BUNDLER_EDITOR=subl

#npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"


#python
export PATH=/usr/local/anaconda3/bin:$PATH

#open_resty
PATH=/usr/local/openresty/nginx/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#source activate py3
export PATH="/usr/local/opt/thrift@0.9/bin:$PATH"

ulimit -c unlimited

# shadowsocks
export PATH="/Users/xxy/Library/Android/sdk/platform-tools:$PATH"
alias wxcli="/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/bin/cli"

#grpc
export DCMAKE_PREFIX_PATH=~/.local:$PATH
