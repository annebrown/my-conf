**Index.md**   

___
Filename: ~/bash-conf/Index.md       
Repo: [git@github.com:annebrown/bash-conf.git]( https://github.com/annebrown/bash-conf.git )  
Author: Anne Brown   
___

# Description  

This project configures bash and vim (xplatform) on all of my hosts.    

It sets my prompts, colors, aliases, env vars, os and host-specific overrides, app shortcuts, cronjobs, wol, git shortcuts, tail logs, etc.  

It also configures vim (.vimrc, ./vim, .vrapperrc, etc.,).  These cover vim conf for bash, VSIX, VSCode, Chrome and oth dev envs.   

Lastly, it sets my host-specific startup scripts, including services (ssh, rdp, X11, etc.), 

# Related Projects    

[Docs]( https://github.com/annebrown/docs.git ) - All of my documentation   

[Snippets]( https://github.com/annebrown/snippets.git ) - Multi-lang code snippets  

[Templates]( https://github.com/annebrown/templates.git ) - My templates    

[IDEs]( https://github.com/annebrown/ides.git ) - Conf settings for my dev IDEs and editors, excluding vim confs.  

# Dependancies and Pre-Requisites:

- Existing Repo (for Win 11 WSL2 Ubuntu/xOS/iOS/AndroidOS/Ubuntu):       
    [git@github.com:annebrown/bash-conf.git]( https://github.com/annebrown/bash-conf.git )      	
- Git ssh keys exchanged
- ~/.ssh/config (git-host: bh)

# File Structure   

```bash
~/source/repos/bash-conf/   
  bash_aliasesa   # my .bash_aliases customizations
  Index.md        # This file 
    sh/           # startup scripts  
    vim/
      vim/          # misc autoload vim scripts   
      vimrc         # bash, VSCode
      vrappercc     # Eclipse IDE

```

# Usage

## Manual Setup  
1. Clone repo: 
       
```bash
  [~] $ git clone ssh://bh/annebrown/bash-conf.git
```

2. Link files: 
 ```bash  
[~] $ ln -s ~/bash-conf/bash_aliases .bash_aliases   
[~] $ ln -s ~/bash-conf/vim .vim     
[~] $ ln -s ~/bash-conf/vimrc .vimrc    
[~] $ ln -s ~/bash-conf/vrapperrc .vrapperrc   
```
3. Startup Services 

 Setup scripts and configs to load at startup:
```bash
$ startup-config
```
##	Automatic Setup  

Tthis script automates the manual setup steps described above.   

	$ config-static