# Configure My Dev Environments

  [My Repos](https://github.com/annebrown/?tab=repositories) > my-conf >  README.md    

# Description

This project configures my dev env on fresh OSs.  It also contains scripts for starting required services and apps.    

# Usage

Clone Repo

```bash

$ git clone https://github.com/annebrown/dotfiles.git ~/dotfiles

```

General Config

```bash
$ cd ~/.dotfiles
$ stow bash
$ stow vim
$ stow lxde # | xfce
$ stow 
```

Host-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles $HOSTNAME
```

OS-Specific Overrides

```bash
$ stow -t ~ --override=. --dotfiles Ubuntu20.04 # | Ubuntu18.3
```

Flavors



```bash
$ stow -t ~ --override=. --dotfiles $HOSTNAME
```

Flavors

```bash
$ stow lxde # | xfce 
```



## [bash](bash/README.md)

## [vim](vim/README.md)

## [Apps](apps/README.md)

## win11

See: [my-conf-win11](https://github.com/annebrown/my-conf-win11) for Windows 11 config.

# Related Links



[GNU Stow](https://www.gnu.org/software/stow/)

 [XDG Base Directory Specs](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html)