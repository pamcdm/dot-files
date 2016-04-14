bootstrap() {
  check_and_install_xcode
  check_and_install_homebrew
  check_and_install_homebrew_cask

  brew tap caskroom/versions

  brew cask install sublime-text3
  brew cask install macvim
  brew cask install atom
  brew cask install google-chrome
  brew cask install firefox
  brew cask install evernote
  brew cask install skype
  brew cask install libreoffice
  brew cask install dropbox
}

install_xcode() {
  xcode-select --install
  echo "Press enter when finished"
  read < /dev/tty
}

check_and_install_xcode() {
  read -p "Would you like to install Xcode? [Y/n] " install_xcode
  if [[ $install_xcode != n* ]]; then
    check_for_xcode
    install_xcode
  fi
}

check_for_xcode() {
  local XCODE=`which xcode-select`

  if [ $XCODE"x" = "x" ]; then
    echo "Xcode is not installed"
    echo "This require manual setup"
    echo "Go on the App Store and install XCODE (FREE)"
    echo "Press enter to continue when you are finished"
    echo "Or CTRL-C to cancel"
    read < /dev/tty
    check_for_xcode
  fi
}

check_for_brew() {
  local BREW=`which brew`
  if [ $BREW"x" = "x" ]; then
    echo "Installing Homebrew <http://brew.sh/>"
    echo "It will setup using the default installation instructions"
    return 1
  fi
  echo "Homebrew already installed. Using your setup"
  return 0
}

install_brew() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

check_and_install_homebrew() {
  check_for_brew || install_brew
}

check_for_cask() {
  if ! brew info brew-cask > /dev/null 2>&1 ; then
    echo "Homebrew-cask <https://github.com/phinze/homebrew-cask> not found."
    echo "Installing it."
    return 1
  fi

  echo "Homebrew-cask already installed. Using your setup"
  return 0
}

setup_brew_cask() {
  brew install cask
}

check_and_install_homebrew_cask() {
  check_for_cask || setup_brew_cask
}


bootstrap
