stty sane
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

MOTD="helpful functions\nimgcat <filename> => displays image inline\nit2dl <path> downloads file to Downloads folder"

alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gp="git push"
alias gpp="git pull"
alias gco="git checkout"
alias git_branch="git rev-parse --abbrev-ref HEAD"

git config --global alias.ll "log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset'"

git config --global alias.unadd 'reset HEAD --'

alias py="python"
alias ll="ls -alG"
alias ls="ls -G"
alias ..="cd .."
alias home='cd ~'

alias md5sum=md5

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

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash


function spushd {
	pushd $1 > /dev/null
}


function spopd {
	popd > /dev/null
}


function dash() {
  	open "dash://$*"
}


function dman() {
  	open "dash://manpages:$*"
}

# This is for virtualenvs in python. Finds the closest virtual env with the given name 
# up the directory tree. If a current virtual env exists then it will deactivate
# it and use the one given.
function use {
	if [ ! -z "$VIRTUAL_ENV" ]; then
		echo "deactivating current venv... $VIRTUAL_ENV"
		deactivate
	fi

	local venv=$1
	if [ -z "$venv" ]; then
		venv="venv"
	fi

	echo "looking for virtualenv named: $venv"

	local local_path="./"
	spushd $local_path
	while [ ! -d $venv ]; do
		spopd
		local_path="$local_path../"
		spushd $local_path

		echo "looking in $(pwd)"

		if [ $(pwd) = "/" ]; then
			echo "chould not find virtualenv $venv"
			break
		fi
	done

	. $venv/bin/activate
	spopd
}


# This is a special way to git commit. Its shorter and will prepend the branch name in the commit message
# if it matches the jira style branch names. In essence name your branch the jira ticket and get a
# branc name prepended commit message.
function gc {
	echo "-- Workign on $(git_branch) looking for jira match..."

	if [ -z "$1" ]; then
		echo "-- Nothing used as comment. Showing status instead of commiting code."
		git status
		return  0
	fi

	TICKET=$(git_branch | cut -f 1,2 -d '-')

	if [[ "$TICKET" =~ ^[A-Z]{2,}\-[0-9]{4,}(.*)?$ ]]; then
		echo "-- Will prepend branch name to commit: $TICKET."
		echo "-- final message: $TICKET: $1"
		git commit -m "$TICKET: $1"
	else
		git commit -m "$1"
	fi

	return 1
}


source ~/.iterm2_shell_integration.`basename $SHELL`
eval $(/usr/libexec/path_helper -s)


export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
