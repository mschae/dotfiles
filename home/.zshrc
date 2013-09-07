# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(rails4 git ruby osx cloudapp sublime mschae)

source $ZSH/oh-my-zsh.sh

if which hub > /dev/null; then eval "$(hub alias -s)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [[ `hostname -s` = ms2MacBookPro ]]; then
  # Oracle Setup
  export ORACLE_HOME=/opt/oracle/instantclient_10_2
  export DYLD_LIBRARY_PATH=$ORACLE_HOME

  export NLS_LANG=GERMAN_GERMANY.UTF8
fi

if [[ `uname` = Darwin ]]; then
  # make sure ruby compiles with the right readline
  export CONFIGURE_OPTS="--with-readline-dir=`brew --prefix readline` --with-ssl-dir=`brew --prefix openssl`"
  export PATH=`npm config get prefix`/bin:$PATH
fi
