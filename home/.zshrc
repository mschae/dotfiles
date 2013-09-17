# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

plugins=(rails4 git ruby osx cloudapp sublime mschae)

source $ZSH/oh-my-zsh.sh

if [ -e ~/.travis/travis.sh ]; then
  source ~/.travis/travis.sh
fi

if [ -f /opt/boxen/env.sh ]; then
  source /opt/boxen/env.sh
else
  if which hub > /dev/null; then eval "$(hub alias -s)"; fi
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
fi
