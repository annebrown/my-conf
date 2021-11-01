#--------------------------------------------------
# Filename:	$MY_REPOS/my-conf/win11/wsl2/desktopkde.sh
# Repo:     git@github.com:annebrown/my-conf.git
# Doc:      $MY_REPOS/my-conf/win11/README.md
# Author:	Anne Brown
# Purpase:	Open an Xfce Desktop Session on WINHOST via RDP.
# Usage:		
#	
#		[anne@Win11WSL2Host:~] $ desktop 
#
# Invoked by: 
#
#	anne@Win11WSL2Host $MY_WIN_REPOS\my-conf\win11\wsl2\xfce4-desktop.bat
# 
#--------------------------------------------------
# Pre-Requisites:
#--------------------------------------------------
#	- WSL2 has been invoked.
#	- Exists in .bash_aliases:
#			alias desktop="~/sh/wsl/desktop.sh"
#   - Repo (git@github.com:annebrown/my-conf.git) cloned to $MY_REPOS
#   - Repo (git@github.com:annebrown/my-conf.git) cloned to $MY_WIN_REPOS

# 
#--------------------------------------------------
# Details:
#--------------------------------------------------  
#	- Set DISPLAY env for Windows Remote Desktop (RDP)
#	- OPen xfce terminal
#
#--------------------------------------------------

# #  Commands for setting up xfce GUI via RD
export DISPLAY=:0
startkde
sudo /etc/init.d/xrdp start