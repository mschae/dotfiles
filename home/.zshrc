# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(rails3 git ruby osx bundler cloudapp sublime mschae)

source $ZSH/oh-my-zsh.sh
eval "$(hub alias -s)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Fuchs Setup
export ORACLE_HOME=/opt/oracle/instantclient_10_2
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export TNS_ADMIN=/Volumes/Projekte/Software/Oracle

export NLS_LANG=GERMAN_GERMANY.UTF8

export CONFIGURE_OPTS=--with-readline-dir=`brew --prefix readline`