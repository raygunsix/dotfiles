# Setup Git completion
source ~/.git-completion.bash

# Define bash colours
source ~/.bash_colors.bash
export CLICOLOR=1

# aliases
alias ll='ls -lF'

# editor
export EDITOR=/usr/bin/vim

# Configure prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[$IGreen\]\n\h:\w \[$Yellow\]\$(__git_ps1 [%s]) \[$BIGreen\]\n→ \[$Color_Off\] "

# set path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:$PATH

# set up rbenv
eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
