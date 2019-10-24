export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(wd copydir dotenv)
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/jadx/bin/:$PATH
export PATH=/Users/xxy/.vimpkg/bin:$PATH
export KEYTIMEOUT=1
export EDITOR=vim
export VISUAL=vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ll='ls -al'
alias sc='rails c'
alias e='emacs'
alias tailf='tail -f'
alias gck="git checkout"
alias gci="git commit"
alias gb=$GOPATH/bin/gb
alias ctags="`brew --prefix`/bin/ctags"

# emacs 键位设定
bindkey -e

#rake bug
alias rake='noglob rake'

export TERM=xterm-256color

# Go
export GOPATH=$HOME/Documents/go_project
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

export BUNDLER_EDITOR=subl

#npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"


#python
export PATH=/usr/local/anaconda3/bin:$PATH

alias pi='pod install --no-repo-update'

#open_resty
PATH=/usr/local/openresty/nginx/sbin:$PATH

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#source activate py3
export PATH="/usr/local/opt/thrift@0.9/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

ulimit -c unlimited

# shadowsocks
export PATH="/Users/xxy/Library/Android/sdk/platform-tools:$PATH"
alias wxcli="/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/bin/cli"

# rust
source $HOME/.cargo/env
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# opencv
export PATH="/usr/local/opt/opencv@2/bin:$PATH"

# flutter
export PATH_TO_FLUTTER_GIT_DIRECTORY="/Users/xxy/Documents/flutter_project/sdk/flutter"
export PATH="$PATH_TO_FLUTTER_GIT_DIRECTORY/bin:$PATH"

# AutoJump https://github.com/wting/autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
