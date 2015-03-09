# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(rails git ruby osx cloudapp sublime mschae)

source $ZSH/oh-my-zsh.sh

if which hub > /dev/null; then eval "$(hub alias -s)"; fi

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export DISABLE_AUTO_TITLES=true

#export PATH=$HOME/bin:$PATH

export PATH=$HOME/.exenv/bin:$PATH
eval "$(exenv init -)"

export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/ms2/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export LC_ALL=CVj
export LANG=en_US.utf8

export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL=

export GOPATH=/Users/ms2/src/_go

# vi mode in bash/zsh
bindkey -v
bindkey '^r' history-incremental-search-backward
