### General Terminal Settings
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls -G'
alias cat='ccat'
export EDITOR=emacs
PS1="\`pwd\`\$ "

### GIT shortcuts
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export GIT_PS1_SHOWCOLORHINTS=false

bashCompletionDir=/usr/local/etc/bash_completion.d
source $bashCompletionDir/git-completion.bash
source $bashCompletionDir/git-prompt.sh
export PROMPT_COMMAND=$'__git_ps1 \' \e[00;34m\w\e[0m\' \' \n\$ \' \' %s\'' 

### Corporate Proxy Settings (Using Squidman)
export ALL_PROXY='http://127.0.0.1:4444'
export HTTP_PROXY=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY

export NO_PROXY='localhost,127.0.0.1,0.0.0.0'

### Docker shortcuts 
alias dockerkill='docker kill $(docker ps -q)'
alias dockerrm='docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
