# Configure Bash

[My Repos](https://github.com/annebrown/?tab=repositories) > [my-conf](../README.md) > bash > README.md 

# Table of Contents

[Description](#description)      
[Usage](#usage)      
    [Manual Setup](#manual-setup)      
    [Automatic Setup](#automatic-setup)      
[Backup Prior to Editing](#backup-prior-to-editing)      

# Description

Sets my prompts, colors, aliases, env vars, os and host-specific overrides, app shortcuts, cronjobs, wol, git shortcuts, tail logs, etc.

Also sets my host-specific startup scripts, including services (ssh, rdp, X11, etc.),   

# Usage

1. Clone Repo: [git@github.com:annebrown/my-conf.git](https://github.com/annebrown/bash-conf.git) to $MY_REPOS/my-conf   

2. Configure .bash_aliases: 

```bash
[~] $ ln -s $MY_REPOS/my-conf/bash/bash_aliases.sh .bash_aliases     
```

    See Also : $MY_REPOS/my-conf/vim/README.md

2. 

# Backup Prior to Editing

Enter ;s  while editing in Vim.  This outputs a new backup file in the fmt:

            `bash_aliases_<date>_<time>_backup`