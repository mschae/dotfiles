# Path to your oh-my-zsh configuration.

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# vi mode in bash/zsh
bindkey -v

setopt appendhistory
setopt autocd
setopt correct_all
setopt extendedglob
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt interactive_comments
setopt pushd_ignore_dups
setopt promptsubst

# Ignore interactive commands from history
export HISTORY_IGNORE="(ls|bg|fg|pwd|exit|cd ..)"
#
# # FIXME: check first if they are available
export LC_ALL=en_US.UTF-8

source "$HOME/.asdf/asdf.sh"
source "$HOME/.zplugrc"

