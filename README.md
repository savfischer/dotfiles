Setup code:

Change shell default to zsh
````
chsh -s /bin/zsh
````

Install oh-my-zsh which is how we get all the cool shell customizations
````
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
````

ln -s dropbox/dev/dotfiles/vimrc .vimrc
ln -s dropbox/dev/dotfiles/zshrc .zshrc
ln -s dropbox/dev/dotfiles/vimrc.bundles .vimrc.bundles
ln -s dropbox/dev/dotfiles/agignore .agignore
````
