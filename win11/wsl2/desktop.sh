#-------------------------------------------------------------------------------
# Filename:	~/sh/wsl/desktop.sh
# Author:	Anne Brown
# Purpase:	Open an Xfce Desktop Session on WINHOST via RDP.
# Usage:		
#	
#		[anne@WINHOST:~] $ desktop 
#
# Invoked by: 
#	anne@WINHOST C:\Users\Anne\source\repos\win-config\xfce4-desktop.bat
#-------------------------------------------------------------------------------
# Dependancies and Pre-Requisites:
#-------------------------------------------------------------------------------
#	- WSL2 Ubuntu is invoked at startup.
#	- .bash_aliases:
#			alias desktop="~/sh/wsl/desktop.sh"
#
#-------------------------------------------------------------------------------
# Details:  
#	- Set DISPLAY env for Windows Remote Desktop (RDP)
#	- 
#	- OPen xfce terminal
#--------------------------------------------------

# #  Commands for setting up xfce GUI via RD
export DISPLAY=:0
startxfce4
sudo /etc/init.d/xrdp start