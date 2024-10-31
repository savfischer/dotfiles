Setup code:

Change shell default to zsh
````
chsh -s /bin/zsh
````

Install oh-my-zsh which is how we get all the cool shell customizations
````
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
````

System link dotfiles from dropbox locations to local machine
````
ln -sf Dropbox/dev/dotfiles/vimrc .vimrc
ln -sf Dropbox/dev/dotfiles/zshrc .zshrc
ln -sf Dropbox/dev/dotfiles/vimrc.bundles .vimrc.bundles
ln -sf Dropbox/dev/dotfiles/agignore .agignore
````
