check_and_install_bash_completion() {
  if ! brew info bash-completion > /dev/null 2>&1 ; then
    echo "Bash completion not installed"
    echo "Installing it."
    return 1
  fi

  echo "Bash completion already installed. Using your setup"
  return 0
} 

bash_profile() {
	echo "**** bash profile configuration ****"
  brew install bash-completion
	cp .bash_profile ~/
  source ~/.bash_profile
}

git_configuration() {
  echo "**** configuration of git ****"
  cp .gitconfig ~/  
}

git_ignore() {
  echo "**** configuration of global gitignore ****"
  git config --global core.excludesfile ~/.gitignore_global
  cp -a .gitignore ~/.gitignore_global
}

setup() {
  bash_profile
  git_configuration
  git_ignore
}

setup