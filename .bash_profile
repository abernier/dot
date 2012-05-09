# PATH
LOCAL_PATH=${HOME}/bin:${HOME}/usr/local/bin:${HOME}/usr/local/sbin:${HOME}/.gem/ruby/1.8/bin:${NODE_PATH}:/usr/local/share/npm/bin

if [ -z "$PATH" ]; then
  PATH=${LOCAL_PATH}
else
  PATH=${LOCAL_PATH}:${PATH}
fi
export PATH

# Editor
export EDITOR='subl -w'

# UTF-8 support for terminal (as of lion...[weird])
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# bash colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# bash history
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
shopt -s histappend

# completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# git
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1='\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\] $ '