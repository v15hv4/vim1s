# vim1s
One second to read remote git repos with Vim, inspired by [github1s](https://github.com/conwnet/github1s).  
Pretty neat when you want to quickly browse a repository without going through the hassle of cloning and deleting later.
Tested on GitHub and GitLab over both HTTPS and SSH.

## Installation
- Using [vim-plug](https://github.com/junegunn/vim-plug):
```
Plug 'v15hv4/vim1s'
```
- Using [Vundle](https://github.com/VundleVim/Vundle.vim):
```
Plugin 'v15hv4/vim1s'
```
- Manual Installation:  
Just copy the function and command definition from `plugin/vim1s.vim` into your vimrc, idk.

## Usage
SSH
```
:Vim1s git@github.com:v15hv4/vim1s.git
```

HTTPS (note: doesn't work for private/authenticated repos)
```
:Vim1s https://github.com/v15hv4/vim1s.git
```

Alternate syntax (GitHub only)
```
:Vim1s v15hv4/vim1s
```
