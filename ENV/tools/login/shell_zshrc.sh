#!/bin/zsh

# file: /Users/johnnori/ENV/tools/login/shell_zshrc.sh
#

# this is the standard .zshrc file
# this file contains the local environment
#

# set the prompt with some formatting
#
HOST_PROMPT_NAME="%B%F{blue}$(uname -n | cut -d. -f1)%b"
HOST_PROMPT_LVL="%B%F{blue}_[%F{red}$SHLVL%F{blue}]%b%F{light green}: "
PS1=$HOST_PROMPT_NAME$HOST_PROMPT_LVL
export PS1

# define frequently accessed paths
#
export TU=/Users/johnnori/Desktop/files/temple
export RESEARCH=/Users/johnnori/Desktop/files/temple/research
export SEED=/Users/johnnori/Desktop/files/temple/research/seed_emulator/seed-emulator-master
export APPS=/Users/johnnori/Desktop/files/apps
export TGDH=/Users/johnnori/Desktop/files/temple/research/tgdh

# set homebrew
#
eval $(/opt/homebrew/bin/brew shellenv)

# define directory commands
#
p  () { echo $PWD; }
sd () { pushd $1 > /dev/null; echo $PWD; }
td () { pushd    > /dev/null; echo $PWD; }
pd () { popd  $1 > /dev/null; echo $PWD; }

# define some other commands
#
m () { more $*; }
d () { ls -cblFa "$@"; }

# define custom aliases
#
alias em='emacs -nw'
alias dc1='docker-compose-v1 build && docker-compose-v1 up'
alias bb='/Users/johnnori/Desktop/files/apps/birthday_bot/birthday_bot.command'

#
# end of file
