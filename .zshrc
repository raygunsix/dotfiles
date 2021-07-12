export ZSH="/Users/chris/.oh-my-zsh"
ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`
plugins=(git)
source $ZSH/oh-my-zsh.sh

ssh-add -K
alias ll='ls -lF'

# pyenv
export PYENV_ROOT="$HOME/.pyenv/shims"
export PATH="$PYENV_ROOT:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/python"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

### END OF GENERATED CONFIG ###
