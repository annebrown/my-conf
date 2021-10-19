# README.md

$MY_REPOS/my-conf/win11/README.md       

# Description

Configures my Windows 11 dev envs.    

# Dependancies and Pre-Requisites:

- Repo: [git@github.com:annebrown/my-conf.git]( https://github.com/annebrown/bash-conf.git )   cloned to $MY_REPOS/my-conf       
- Git ssh keys exchanged
- ~/.ssh/config (git-host: gh)

# Usage

## WSL2

1. Start xfce4-session and start rdp service:
   
   Either use bash alias (configured in [bash](../bash/README.md)):

```bash
$ desktop
```

or directly:

```bash
$ $MY_REPOS/my-conf/win11/wsl/desktop.sh   
```

2. Launch Windows Remote Desktop RDP profile:

```bat
> $MY_WIN_REPOS/my-conf/win11/rdp/start-rdp-desktop.rdp
```