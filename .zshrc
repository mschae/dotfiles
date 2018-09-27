# Path to your oh-my-zsh configuration.

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# vi mode in bash/zsh
bindkey -v

# Ignore interactive commands from history
export HISTORY_IGNORE="(ls|bg|fg|pwd|exit|cd ..)"
#
# # FIXME: check first if they are available
export LC_ALL=en_US.UTF-8

source "$HOME/.asdf/asdf.sh"
source "$HOME/.zplugrc"

unsetopt correct_all

BREW_PREFIX=/usr/local

if [[ -d "$BREW_PREFIX/opt/fzf" ]]; then
  source "$BREW_PREFIX/opt/fzf/shell/completion.zsh"
  source "$BREW_PREFIX/opt/fzf/shell/key-bindings.zsh"
fi

if [[ -x `which ag` ]]; then
  export FZF_DEFAULT_COMMAND='ag -l -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

source /usr/local/etc/profile.d/z.sh


export SSH_AGENT_PID=""
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
