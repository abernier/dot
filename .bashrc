PATH=/usr/local/bin:$PATH

# enable colors
export CLICOLOR=1

#export EDITOR="code -w"

# Shell prompt with git branch (see: https://github.com/magicmonty/bash-git-prompt#via-homebrew-on-mac-os-x)
# if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#   __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
#   GIT_PROMPT_ONLY_IN_REPO=1
#   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
# fi

# Welcome message
echo "Hi from your ~/.bash_profile!"

#
# history
#
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"  # Save and reload the history after each command finished
# Snippets
history -s 'kill $(lsof -ti:3000) # kill process on port 3000'
history -s 'git reset --hard HEAD~1'
history -s 'git rev-parse HEAD # print last commit id'
history -s 'docker ps -q | xargs docker stats # CPU usage for running containers (like top)'

# some aliases
alias ll="ls -al"
alias ironyou="npx -y ironyou ~/ironhack/wdpt202102par.json"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# rbenv
# eval "$(rbenv init -)"export PATH="/usr/local/sbin:$PATH"

# google-cloud-sdk (installed with homebrew)
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

# Minecraft
alias minecraft-server="cd ~/minecraft-server && java -Xmx1024M -Xms1024M -jar minecraft_server.1.16.4.jar nogui"
export PATH="/usr/local/sbin:$PATH"

# Dockerized vim (see: https://github.com/abernier/vim)
vimm() {
  docker run --rm -it \
    -v $(pwd):/media/host \
    -w /media/host \
    abernier/vim $*
}
