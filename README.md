# vim
All my vim files that I'd like synced. I use a public git repository
(this one) to store vim settings and files in a sort of central location. 
If I want these vim settings on another machine, I just pull this repository into the
local machine and link the settings to the locally created repository.

##How to use
First, pull the repository into whatever directory you want with:

```
git clone https://github.com/randomouscrap98/vim.git
```

Next, cd into the directory and run the script which automatically links all vim settings to this directory. 

```
cd vim
./mkvimrc.sh
```

This script moves your current vimrc (the vim options file) into the repository's "oldvimrc" directory. 
It then generates a new vimrc which points to this repository. If you ever want to move this repository,
you should run the mkvimrc.sh script again.

That's it! Your vim settings now use this repository's vim settings.
