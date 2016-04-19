git_configuration() {
  echo "* configure git "
	brew install git
  cp .gitconfig ~/
}

git_ignore_configuration() {
  echo "* configure gitignore"
  git config --global core.excludesfile ~/.gitignore_global
  cp -a .gitignore ~/.gitignore_global
}

bash_configuration() {
	echo "* bash profile configuration ****"
  brew install bash-completion
  cp .bash_profile ~/
}

vim_configuration() {
  echo "* configure vim"
	rm -rf ~/.vim/

  echo "install bundle"
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

  echo "set vimrc configuration"
  cp .vimrc ~/

  echo "install colors"
  cp -r .vim/colors ~/.vim/


  echo "install plugins"
  vim +PluginInstall +qall
}

setup_dot_files() {
  git_configuration
  git_ignore_configuration
	bash_configuration
	vim_configuration
}

setup_dot_files
