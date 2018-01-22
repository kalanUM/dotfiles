# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# kcd - Profile colour settings 2017-08

# git prompt function
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# colour definitions 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

CYAN="\[\033[36m\]"
DARK_YELLOW="\[\033[m\]"
LIGHT_GREEN="\[\33[33;1m\]"
YELLOW2="\[\033[33;1m\]"

# colourise prompt, set to username@hostname: cwd (git branch) $
#PS1="[$GREEN\u@\h$NO_COLOR: \w$YELLOW\$(parse_git_branch)$NO_COLOR]\$ "
export PS1="$CYAN\u$NO_COLOR@$GREEN\h$NO_COLOR:$YELLOW2\w $YELLOW\$(parse_git_branch)$NO_COLOR\$ "

# CLI colours
export CLICOLOR=1

# ls colours
#export LSCOLORS=axfxcxdxbxegedabagacad
export LSCOLORS=exFxBxDxCxegedabagacad

# ls alias for G (colour), F (file type icons), h (human readable sizes)
alias ls='ls -GFh'

## Use a long listing format ## 
alias ll='ls -lah'

## Show hidden files ## 
alias l.='ls -dG .*'


