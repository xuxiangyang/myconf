export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(wd bd copydir dotenv)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/jadx/bin/:$PATH
export PATH=/Users/xxy/.vimpkg/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

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
#source ~/.nvm/nvm.sh

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

#mix aotuocomplete
#source ~/.mix_autocomplete.zsh
#source /usr/local/anaconda3/bin/aliyun_zsh_complete.sh

#source activate py3
export PATH="/usr/local/opt/thrift@0.9/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

ulimit -c unlimited
export PATH="/Users/xxy/Documents/scala_project/preditionio/PredictionIO-0.12.1/bin:$PATH"

# shadowsocks
#export http_proxy=http://127.0.0.1:1087
#export https_proxy=http://127.0.0.1:1087
export PATH="/Users/xxy/Library/Android/sdk/platform-tools:$PATH"
alias wxcli="/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/bin/cli"

# export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;
source $HOME/.cargo/env
export PATH="/usr/local/opt/opencv@2/bin:$PATH"

# flutter
export PATH_TO_FLUTTER_GIT_DIRECTORY="/Users/xxy/Documents/flutter_project/sdk/flutter"
export PATH="$PATH_TO_FLUTTER_GIT_DIRECTORY/bin:$PATH"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

