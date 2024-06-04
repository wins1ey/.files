# wins1ey.files

Prior to the installation make sure you have committed the alias to your .bashrc or .zshrc:

`alias git.files='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'`


And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:

`echo ".files" >> .gitignore`


Now clone your .files into a bare repository in a "." folder of your $HOME:

`git clone --bare https://github.com/wins1ey/.files $HOME/.files`


Define the alias in the current shell scope:

`alias git.files='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'`


Checkout the actual content from the bare repository to your $HOME:

`git.files checkout`
