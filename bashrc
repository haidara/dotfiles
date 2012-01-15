alias rm="rm -i"
alias ssh="ssh -X -t"
alias df="df -h"
alias du="du -h"
alias ls="ls -G"
alias l="ls -l -h"
alias ll="ls -la -h"
#alias irb="irb --readline -r irb/completion"
alias ps="ps auxf"
alias mc="EDITOR=vim mc"
alias rt="screen -r"
alias rth="ssh -t house screen -r"
#alias mysql="rlwrap -a -c mysql"
alias rsync="rsync -auvzr --progress"
alias sudoe='sudo '
alias imp='vi ~/important/important.numbers'
#alias ctags="`brew --prefix`/bin/ctags"
alias guc2="ssh emrlocal mysql guc2"
alias office="ssh emrlocal mysql office"
alias emrlocal="ssh emrlocal"
alias ssvi="ssh ss 'vim /emr/www/'"
alias emr="cd ~/Mounts/emr/www"



# This line was appended by KDE
# Make sure our customised gtkrc file is loaded.
# (This is no longer needed from version 0.8 of the theme engine)
# export GTK2_RC_FILES=$HOME/.gtkrc-2.0
#updateemnserver ()
#{
#    ssh $1 -t /emr/www/bin/updateemn
#}
svnmasterupdate()
{
	touch /emr/www/changelog && \
    cd /emr/www/ && svn ci -m '' $1 && \
    ssh master "cd /emr/www/ && svn update && php commands.php dumpdbschema 'asd' 'setup/master.dump.sql'"
}
itunesserver()
{
	rdesktop -g 1280x768 -0  192.168.40.200 -r sound:remote -u haidara -p abir11
}
getemndb()
{
	[ -d /emr/mysql/$1 ] || { 
		mkdir /emr/mysql/$1 
		sudo chown -R mysql:mysql /emr/mysql/$1 
		sudo ln -sf /emr/mysql/$1 /var/lib/mysql/ 
	}
	echo "--transferring the database from $1"
	ssh -t $1 "rm -f asd.sql.gz ; mysqldump asd > asd.sql && gzip asd.sql" && scp $1:asd.sql.gz ~/
	echo "--importing $1 database"
	zcat ~/asd.sql.gz | mysql $1
	echo "--updating the local db to master"
	/Users/haidara/bin/updatelocaldb.php $1 | mysql $1
}
copysshkey()
{
	local PORT=${2:-22}
	ssh -p $PORT $1 "cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_dsa.pub
}

TestSSH() {
	#local user=${1}
	local host=${1}
	#local timeout=${3}

	ssh -q -q -o "BatchMode=yes" -o "ConnectTimeout 5" ${host} "echo 2>&1" && return 0 || echo "Make sure you have access to ${host}"

}
repairDBtables() {
	local DB=${1:-asd}
	for table in `mysql -e "show tables" $DB`;
	do
		mysql -e "repair table $table" $DB
	done
}
makeMovieDirs() {
	find . ! -name . -prune -type f | while read file
	do
		dir=$(basename "$file" ".avi")
		mkdir "$dir" && mv "$file" "$dir/"
		echo "mkdir \"$dir\" && mv \"$file\" \"$dir\""
	done
}
listPkgsBySize() {
	dpkg-query -W --showformat='${Installed-Size;10}\t${Package}\n' | sort -k1,1n
}
sshcopyid() {
    cat ~/.ssh/id_dsa.pub | ssh haidara@$1 "cat - >> ~/.ssh/authorized_keys"
}


#export AWT_TOOLKIT=MToolkit

# enable bash completion in interactive shells
# MacPorts Bash shell command completion
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
if [ -f /Users/haidara/.git-completion.bash ]; then
  . /Users/haidara/.git-completion.bash
fi
if [ -f /home/haidara/.git-completion.bash ]; then
  . /home/haidara/.git-completion.bash
fi

#if [[ -f /.dapper_chroot ]]; then
#    PS1="[\u@\h:/dapper_chroot/\w]\$ "
#else
#    PS1="[\u@\h:\w]\$ " # or whatever you had it set as
#fi
#export PYTHONSTARTUP=~/.pythonrc
#xmodmap -e "remove lock = Caps_Lock" #get rid of the Caps_Lock

#color man pages
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;37m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[01;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;32m'
#alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'


#alias g='git'
#complete -o default -o nospace -F _git g


#completion for getemndb and updateemnserver, use _ssh from bash_completion
shopt -u hostcomplete && complete -F _ssh getemndb updateemnserver copysshkey sshcopid addgittoservers

export SSH_AUTH_SOCK=0
# don’t put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# … and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

shopt -s histappend
export PROMPT_COMMAND=`history -a; history -n; history -w`


#figure out the PS color based on the server name
#if  test $(hostname) = "haidara-vaio"  ; then
#	PSCOLOR="32"
#else
#	PSCOLOR="31"
#fi

PSCOLOR="31"

PS1='\n\[\e[$PSCOLOR;1m\](\[\e[37;1m\]\u\[\e[$PSCOLOR;1m\])-(\[\e[37;1m\]jobs:\j\[\e[$PSCOLOR;1m\])-(\[\e[37;1m\]\w\[\e[$PSCOLOR;1m\]) $(__git_ps1 "(%s)")\n[\[\e[37;1m\]\h | \!\[\e[$PSCOLOR;1m\]]-> \[\e[0m\]'

export PATH=$PATH:/sbin:/usr/sbin:/opt/kde3/bin:/Users/haidara/bin

export EDITOR=vim
export MYSQL_PS1="`hostname` [\d]>"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#rvm use 1.9.2
#TERM=linux

##
# Your previous /Users/haidara/.bash_profile file was backed up as /Users/haidara/.bash_profile.macports-saved_2011-08-18_at_21:42:40
##

# MacPorts Installer addition on 2011-08-18_at_21:42:40: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
# use yellow for directories
export LSCOLORS=dxfxcxdxbxegedabagacad

if [ -d /Applications/ ];
then
    export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -g -f '
else
    export GIT_EDITOR='vi'
fi


