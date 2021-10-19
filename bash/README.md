# README.md

$MY_REPOS/my-conf/bash/README.md       

# Description

Sets my prompts, colors, aliases, env vars, os and host-specific overrides, app shortcuts, cronjobs, wol, git shortcuts, tail logs, etc.

Also sets my host-specific startup scripts, including services (ssh, rdp, X11, etc.),   

# Dependancies and Pre-Requisites:

- Repo: [git@github.com:annebrown/my-conf.git]( https://github.com/annebrown/bash-conf.git )   cloned to $MY_REPOS       
- Git ssh keys exchanged
- ~/.ssh/config (git-host: gh)

# Usage

## Manual Setup

1. Link files: 

```bash
[~] $ ln -s ~/my-conf/bash/bash_aliases .bash_aliases     
```

2. Startup Services 
   
   Setup scripts and configs to load at startup:
   
   ```bash
   startup-config   
   ```

## Automatic Setup

This script automates the manual setup steps described above. vim

Configures vim (.vimrc, ./vim, .vrapperrc, etc.,). These cover vim conf for bash, VSIX, VSCode, Chrome and oth dev envs.

```bash
config-static
```