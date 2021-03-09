PATH=/usr/local/bin:$PATH

#export EDITOR="code -w"

# Prompt with git branch (see: https://github.com/magicmonty/bash-git-prompt#via-homebrew-on-mac-os-x)
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Welcome message
echo "Hi from your ~/.bash_profile!"

# some aliases
alias ll="ls -al"

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

# portable vim experiment (see: https://github.com/abernier/vim)
vimm() {
  docker run --rm -it \
    -v $(pwd):/media/host \
    -w /media/host \
    abernier/vim $*
}
