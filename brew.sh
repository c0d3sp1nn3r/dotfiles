#!/bin/bash

# Install command-line tools using Homebrew

# simonowen - Ask for the administrator password upfront.
# sudo -v

# simonowen - Keep-alive: update existing `sudo` time stamp until the script has finished.
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
#sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils

# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names


# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew install homebrew/completions/brew-cask-completion

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
# brew install homebrew/dupes/screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# run this script when this file changes guy.
# brew install entr

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
# brew install hub


# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries
brew install ack
brew install android-platform-tools
# brew install dark-mode
# brew install exiv2
# brew install fzf
brew install git
# brew install git-lfs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install node # This installs `npm` too using the recommended installation method
# brew install the_silver_searcher
# brew install ffmpeg --with-libvpx
# brew install p7zip
brew install pidcat   # colored logcat guybrew install pigz
# brew install pv
brew install rename
# brew install rhino
# brew install speedtest_cli
# brew install ssh-copy-id
# brew install terminal-notifier
# brew install testssl
brew install tree
# brew install vbindiff
# brew install webkit2png
# brew install zopfli
brew install zsh

# Remove outdated versions from the cellar
brew cleanup
