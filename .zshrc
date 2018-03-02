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

export FZF_TUMX=1

if [[ -d "$BREW_PREFIX/opt/fzf" ]]; then
  source "$BREW_PREFIX/opt/fzf/shell/completion.zsh"
  source "$BREW_PREFIX/opt/fzf/shell/key-bindings.zsh"
fi

# Teleconsole does not preserve TMUX env variable
if [[ -z "$TMUX" ]] && [[ -z "$TELEPORT_SESSION" ]]; then
  # Attempt to discover a detached session and attach it, else create a new
  # session
  CURRENT_USER=$(whoami)
  if tmux has-session -t $CURRENT_USER 2>/dev/null; then
    tmux attach-session -t $CURRENT_USER
  else
    tmux new-session -s $CURRENT_USER
  fi
fi

if [[ -x `which ag` ]]; then
  export FZF_DEFAULT_COMMAND='ag -l -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

export SSH_AGENT_PID=""
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
