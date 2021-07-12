export ZSH="/Users/chris/.oh-my-zsh"

ZSH_THEME="agnoster"

DEFAULT_USER=`whoami`

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ll='ls -lF'

if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv/shims"
  export PATH="$PYENV_ROOT:$PATH"
  export PIPENV_PYTHON="$PYENV_ROOT/python"
  eval "$(pyenv init -)"
fi
