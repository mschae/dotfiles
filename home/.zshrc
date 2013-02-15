# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases

alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"

alias use='rvm use'

# Rails Aliases
alias schemaload='RAILS_ENV=test rake db:schema:load'
alias testmigrate='RAILE_ENV=test rake db:migrate'

alias fs='bundle install && foreman start'
alias grd='schemaload && testmigrate && guard'

# Start/Stop Commands
alias startpg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias startredis='redis-server /usr/local/etc/redis.conf'
alias stopredis='kill `cat /usr/local/var/run/redis.pid`'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails3 git ruby rvm osx bundler cloudapp sublime)

source $ZSH/oh-my-zsh.sh
eval "$(hub alias -s)"

unsetopt correct_all

# export ORACLE_HOME=/opt/oracle/instantclient_10_2
# export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_10_2

# Customize to your needs...
export PATH=/Users/ms2/.rvm/gems/ruby-1.8.7-p352@br/bin:/Users/ms2/.rvm/gems/ruby-1.8.7-p352@global/bin:/Users/ms2/.rvm/rubies/ruby-1.8.7-p352/bin:/Users/ms2/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/texbin:/opt/local/bin:/usr/local/git/bin

