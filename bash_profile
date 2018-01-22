# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

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


