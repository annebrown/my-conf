#---------------------------------------
#
# Filename:	$MY_REPOS/my-conf/bash/bash_aliases.sh
# Purpose:	Bash config
# Repo: 	git@github.com:annebrown/my-conf.git
# Doc:		./README.md
# Author:	Anne Brown
#
#---------------------------------------

#---------------------------------------
# Usage:
#---------------------------------------
# 	1. Clone repo (git@github.com:annebrown/my-conf.git) to $MY_REPOS/my-conf	
#	2. Link file:
#
#			[~] $ ln -s $MY_REPOS/bash_aliases .bash_aliases

#	3. Backup Prior to Editing:
#		Enter ;s before editing in Vim, to create a new backup file in the fmt:
#			bash_aliases_<date>_<time>_backup
#
#---------------------------------------

#---------------------------------------
# Contents
#---------------------------------------
# Env Vars - xplatform
# 	- My Repos Locations
# 	- Editors
# 	- MySql
# - Aliases
# 	- XPlatform
# 		- General
# 		- mysql
# 	- Win11 WSL2 
#	- browndomain.com
# 	- annebrown.net
#	- perl.org
# 	- perl
# 	- Catalyst Server
#	- aphone
#	- atab
#	- aserver
#	- achromebook
#	- alap
#	- anchor
#	- ESSiA
# - Overrides:
# 	- Mobile App Development
# 	- WSL2
#	- Ubuntu
# 	- iOS
# 	- xOS
#	- AndroidOS
# - My Prompts
# - My Colors
# - Visual Verification that .bash_aliases loaded 
#


#---------------------------------------
#  Env Vars - xplatform
#---------------------------------------
# xplatform
#   - My Repos Locations  
		export MY_REPOS="~/repos"  
    	export MY_WIN_REPOS="C:/Users/anne/repos"  

#   - Editors
	    export EDITOR='vim' # make vim the default editor
# MySql
    export VIMRUNTIME=/usr/share/vim/vim74
    PATH=$PATH:$MY_REPOS/my-conf/bash/sh # Add my sys admin scripts to PATH
    export PATH

#--------------------------------------------------
# Aliases
#--------------------------------------------------
# XPlatform
#	General
	alias vimhelp="vim note:help"
	alias ping3='ping -c 3'
	alias ping3g='ping -c 3 google.com'
	alias lal='ls -al'
	alias myxterm='xfce4-terminal&'
	alias envd='env|grep DISPLAY'
#	MySql 
	alias mysqlstart="sudo /usr/local/mysql/support-files/mysql.server start"
	alias mysql="/usr/local/mysql/bin/mysql"
	alias mysqladmin="/usr/local/mysql/bin/mysqladmin"
# browndomain.com 
	alias b.com-mount="sshfs bh ~/mnt" 
	alias b.com-log="ssh bh tail -f /var/log/httpd/error_log.1 | grep 204.237.125.197"
	alias b.com-gitadd="ssh bh  'cd ~/cloud/www/WebApp; git add .;'"
	alias b.com-gitcommit="ssh bh 'cd ~/cloud/www/WebApp; git commit -m \"batch commit\";'"
	alias b.com-gitpull="ssh bh 'cd www/WebApp; git pull;'"
	alias b.com-gitall="b.comgitadd; b.comgitcommit; b.comgitpull;"
	alias b.com-start-svr="ssh bh 'cd www/WebApp; perl script/webapp_fastcgi.pl;'"
	alias b.com-scp-bashrc="scp ~/.bashrc bh:~/."
	alias sshbh="ssh bh"
	# PHP
	if [ `hostname` = "box567.bluehost.com" ]; then
		alias php.ini-edit="cp public_html/php.ini \"public_html/php.ini-`date +%y-%m-%d`-00\" && vim public_html/php.ini"	
	fi
# annebrown.net
	alias ab.net-log="ssh admin@annebrown.net tail -f /var/log/httpd/error_log.1"
# perl.org
	alias p.org-bash="ssh -X -l anneq -p perl.org"  
# perl 
	alias perldocsvr="sudo ls; sudo perldoc-server --public &"
# Catalyst Server 
	alias svrwebappt="gowebappt; perl script/webapptest_server.pl -r -p 1234"
	alias svrwebapp="gowebapp; perl script/webapp_server.pl -r -p 5678"
# aphone 
	alias ssh-aphone-root="ssh -p 2222 root@aphone"
# atab
	alias ssh-atab-root="ssh -p 2222 root@atab"
# aserver
	alias ssh-aserver="ssh -p 22 anne@aserver"
# achromebook
	alias ssh-achromebook=" ssh -p 22 anne@achromebook"
# alap
	alias ssh-alap="ssh -p 22 anne@alap"
# anchor
	alias ssh-anchor="ssh -p 2222 anne@anchor"
# ESSi host
	alias sshaws="ssh -i ~/.ssh/essi bitnami@aws-essi-prod-instance-0000"

#--------------------------------------------------
# Overrides
#--------------------------------------------------
# Mobile App Development
#	WSL2
	if [ `hostname` = "alap" ] || [ `hostname` = "alap-wsl" ] || [ `hostname` = "aserver" ] || [ `hostname` = "anchor-wsl" ]; then
		export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
		export PATH=$PATH:$JAVA_HOME/bin
		export ANDROID_HOME=~/Android
		export PATH=$ANDROID_HOME/tools:$PATH
		export PATH=$ANDROID_HOME/tools/bin:$PATH
		export PATH=$ANDROID_HOME/platform-tools:$PATH	
		export PATH="$PATH:`pwd`/dev/flutter/bin"
		alias connectaphone="adb connect 912.168.2.12:5555"	
		cd # WSL2 opens in wrong dir.  Bad json
	fi
# Win11 WSL2
	if [ `hostname`="alap-wsl" ] || [ `hostname` = "alap" ] || [ `hostname`="aserver" ] || [ `hostname`="anchor-wsl" ]; then
		
		alias desktop="~/repos/my-conf/win11/wsl2/desktop.sh" # Prepare xfce4 desktop for RDP Remote Access
		alias desktopkde="~/repos/my-conf/win11/wsl2/desktopkde.sh" # Prepare xfce4 desktop for RDP Remote Access
		alias godev="cd ~/repos/my-conf"
	fi
# Ubuntu 
	if [ `hostname` = "alap" ] || [ `hostname` = "aserver-wsl" ] || [ `hostname` = "anchor-wsl "] || [ `hostname` = "achromebook" ]; then
		alias cdcronjobs='cd /f/etc/crontab'
		# xhost local:anne > /dev/null # Allow crontab to access X display
		alias king-wol="powerwake 04:54:53:01:AC:B1"
	fi
# iOS
	if [ `hostname` = "aiPad" ] || [ `hostname` = "aiphone" ]; then
		alias gocloud="cd ~/Documents/cloud"
	fi
# xOS
	if [ `hostname` = "king" ]; then	
		# exports - king
			export EDITOR="~/sh/mvim"	# make MacVim the default editor
		# aliases - bash on king
			 alias vbash="mvim ~/.bash_profile"
			 alias cbash="cat ~/.bash_profile | grep alias"
			 alias vvim="mvim ~/cloud/mobile/dev/rcfiles/.vimrc"
			 alias rebash=". ~/.bash_profile"
		# aliases - apps on king
			alias clipboard="godropbox && mvim Clipboard.txt"
		# aliases - apps - owncloud
			alias owncloudstart="/Applications/ownCloud.app/Contents/MacOS/ownCloud --logwindow"
		# aliases - apps - log
			alias logs="open /Applications/Utilities/Console.app"
		# aliases - apps - vim gui
			alias mvim="~/sh/mvim"
			alias smvim="sudo /Users/Anne/sh/mvim" # sudo mvim
		# aliases - paths on king	
			alias gowebapp="cd ~/Sites/WebApp"
			alias gowebappt="cd ~/Sites/WebAppTest"
			alias godropbox="cd /Users/Anne/Dropbox"
			alias clipboard="godropbox && mvim Clipboard.txt"
			alias gocloud="cd /Users/Anne/cloud"
	fi

#--------------------------------------------------
# Scripts
#--------------------------------------------------
# Configure Intel compilers for wsl
	if [ `hostname` = "alap" ]; then

		source /opt/intel/oneapi/setvars.sh
	fi

#--------------------------------------------------
# My prompts
#--------------------------------------------------
PS1="[\[\e[4;35m\]\u\[\e[m\]@\[\e[1;34m\]$HOSTNAME\[\e[m\]:\[\e[0;36m\]\w\[\e[0m\]] $ \[\e[0m\]"
alias colormyprompt='PS1="\[\[\e[4;35m\]\u\[\e[m\]@\[\e[1;34m\]$HOSTNAME\[\e[m\]:\[\e[0;36m\]\w\[\e[0m\]] $ \[\e[0m\]"'

#--------------------------------------------------
# My Colors
#--------------------------------------------------
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=30;104:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
export LS_COLORS  

#--------------------------------------------------
# Visual Verif that .bash_aliases loaded 
#--------------------------------------------------
echo ============================ 
date
echo ============================


 