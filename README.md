Setup code:

````
chsh -s /bin/zsh # change shell default to zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # install oh-my-zsh

ln -s dropbox/dev/dotfiles/vimrc .vimrc
ln -s dropbox/dev/dotfiles/zshrc .zshrc
ln -s dropbox/dev/dotfiles/vimrc.bundles .vimrc.bundles
ln -s dropbox/dev/dotfiles/agignore .agignore
````
