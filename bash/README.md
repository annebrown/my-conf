# Configure Bash

[My Repos](https://github.com/annebrown/?tab=repositories) > [my-conf](../README.md) > bash > README.md 

# Table of Contents

[Description](#description)      
[Usage](#usage)      
    [Manual Setup](#manual-setup)      
    [Automatic Setup](#automatic-setup)      
[Making Changes](#making-changes)      

# Description

Sets my prompts, colors, aliases, env vars, os and host-specific overrides, app shortcuts, cronjobs, wol, git shortcuts, tail logs, etc.

Also sets my host-specific startup scripts, including services (ssh, rdp, X11, etc.),   

# Usage

## Manual Setup

1. Clone Repo: [git@github.com:annebrown/my-conf.git](https://github.com/annebrown/bash-conf.git) to $MY_REPOS/my-conf   
   
   
2. Link files: 

```bash
[~] $ ln -s $MY_REPOS/my-conf/bash/bash_aliases .bash_aliases     
```

    See Also : $MY_REPOS/my-conf/vim/README.md

```bash
[~] $ ln -s $MY_REPOS/my-conf/vim .vim
[~] $ ln -s $MY_REPOS/my-conf/vimrc .vimrc
[~] $ ln -s $MY_REPOS/my-conf/vrapperrc .vrapperrc
```

2. Prepare service and app startup scripts.  Run: 
   
   [To Do: Finish editing scripts and push to dynamic branch.]

```bash
prep_startup_scripts   
```

## Automatic Setup

This script automates the manual setup steps described above. 

```bash
$ $MY_REPOS/my-conf/bash/sh/config-static.sh
```

    or

```bash
$ config-static
```

# Making Changes

1. Pull latest version:

```bash
[$MY_REPOS/my-conf]$ git pull
```

2. Open conf file:

```bash
vim $My_REPOS/my-conf/bash/bash_aliases
```

3. Backup prior to editing.  Enter ;s  This outputs a new backup file in the fmt:

            `bash_aliases_<date>_<time>_backup`

4. Edits

5. Push Changes:

```bash
[$MY_REPOS/my-conf]$ git add .
[$MY_REPOS/my-conf]$ git commit -m "Describe edits."
[$MY_REPOS/my-conf]$ git push
```