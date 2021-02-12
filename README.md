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
GitHub HTTPS
```
:Vim1s https://github.com/torvalds/linux.git
```

GitLab HTTPS
```
:Vim1s https://gitlab.com/linux-kernel/linux.git
```

GitHub SSH
```
:Vim1s git@github.com:torvalds/linux.git
```
