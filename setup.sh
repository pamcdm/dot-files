bash_profile() {
	echo "**** bash profile configuration ****"
  brew install bash-completion
  cp .bash_profile ~/.bash_profile
  source ~/.bash_profile
}

git_configuration() {
  echo "**** configure git "
  cp .gitconfig ~/  
}

git_ignore_configuration() {
  echo "**** configure gitignore"
  git config --global core.excludesfile ~/.gitignore_global
  cp -a .gitignore ~/.gitignore_global
}

vim_configuration() {
  echo "**** configure vim"
  rm -rf ~/.vim/

  echo "install bundle"
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

  echo "set vimrc configuration"
  cp .vimrc ~/

  echo "install colors"
  mkdir ~/.vim/colors
  rm -rf ~/Downloads/vim-monokai
  git clone git@github.com:sickill/vim-monokai.git ~/Downloads/vim-monokai
  cp ~/Downloads/vim-monokai/colors/monokai.vim ~/.vim/colors/

  echo "install plugins"
  vim +PluginInstall +qall
}

setup() {
  git_configuration
  git_ignore_configuration
  vim_configuration
}

setup