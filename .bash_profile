#copy what you need!!

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

MOTD="helpful functions\nimgcat <filename> => displays image inline\nit2dl <path> downloads file to Downloads folder"

alias gs="git status"
alias gc="git commit -m"
alias ga="git add"
alias gd="git diff"
alias gp="git push"
alias gpp="git pull"

alias py="python"
alias ll="ls -alG"
alias ls="ls -G"
alias ..="cd .."
alias home='cd ~'

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"

source /usr/local/Cellar/git/2.11.0/etc/bash_completion.d/git-completion.bash
source /usr/local/Cellar/git/2.11.0/etc/bash_completion.d/git-prompt.sh

export PS1="\[\e[0;37m\][\[\e[0;32m\]\u\[\e[0;31m\]@\[\e[1;34m\]\h \w \[\e[0;37m\]]\$(__git_ps1)$ "

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/Developer/usr/bin
export PATH=$PATH:/usr/local/mysql/bin
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export PATH=~/projects/bin:$PATH
export PATH=~/bin:$PATH

#NOTE(brett): this is for custom things for decagon
export PATH=$PATH:/Users/brettbeers/devel/decagon-meter/bin


#LS_COLORS='di=1;34'; export LS_COLORS
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabaeaced


function use {
	. $1/bin/activate
}


function dash() {
  	open "dash://$*"
}


function dman() {
  	open "dash://manpages:$*"
}


#for iterm sthough
test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

#for iterm though... remove if you dont use iterm
source ~/.iterm2_shell_integration.`basename $SHELL`
