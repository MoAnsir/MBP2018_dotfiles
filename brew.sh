#!/usr/bin/env bash

# Install command-line tools using Homebrew.

#Maybe this stuff should go here.... Im not sureno
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

#Add in my stuff
#brew cask install sublime-text3
brew cask install iterm2
#brew cask install virtualbox
#brew cask install vagrant
#brew cask install vagrant-manager
brew cask install sourcetree
#brew cask install google-chrome
#brew cask install google-chrome-canary
brew cask install google-drive
brew cask install google-hangouts
#brew cask install firefox
brew cask install firefoxdeveloperedition
brew cask install spectacle
brew cask install kaleidoscope
brew cask install vlc
#brew cask install transmission
brew cask install alfred
brew cask install cheatsheet
brew cask install android-file-transfer
#brew cask install adobe-air
brew cask install charles
brew cask install slack
brew install node
brew install ffmpeg --with-libvpx
brew install gpg #THen you need to run gpg --gen-key. This is also helpful gpg --list-key. Remember to fo git config --global user.name/.email/signingkey. For the last one you can take out the global and only set it for the Repo.

#Also install zeplin

brew link glib #Must do this before installing gimp
brew install gimp

#Node packages
sudo npm install -g grunt-cli
sudo npm install -g babel-cli
sudo npm install -g bower
sudo npm install -g csslint
sudo npm install -g gulp
sudo npm install -g jshint
sudo npm install -g jsxhint
sudo npm install -g webpack
sudo npm install -g webpack-dev-server

#Gem packages
sudo gem install sass
sudo gem install compass


# Remove outdated versions from the cellar.
brew cleanup
