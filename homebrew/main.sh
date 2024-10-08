#################################################
@ "Homebrew"
#################################################

# Default formulas are shared with all profiles
# Default fonts are shared with all profiles
# Default casks are shared and non-shared. 
# Runs default casks and custom installationProfile casks.

source homebrew/defaultFormulas.sh
source defaultFonts.sh
source defaultCasks.sh

# Install/update Homebrew
if test ! $(which brew); then
    _i "Installing Homebrew..."
    echo 'export PATH="/opt/homebrew/bin:$PATH"'
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    _i "Updating Homebrew..."
    brew update --verbose
    brew upgrade
    brew cleanup
fi

_i "Homebrew is now set to not update"
export HOMEBREW_NO_AUTO_UPDATE=1

# Install formulas
_i "Installing Homebrew formulas..."
# brew install ${defaultFormulas[@]}

# Install fonts
_i "Installing Homebrew fonts..."
brew tap homebrew/cask-fonts
# brew install cask ${defaultFonts[@]}

printf "${casks}"
exit 0

# Install casks, shared and non-shared ones
_i "Downloading Homebrew casks..."
for cask in ${casks[@]}; do
    [[ ${cask} == 'spotify' ]] && continue
    [[ ${cask} == 'hyperdock' ]] && continue    
    [[ ${cask} == 'homebrew/cask-versions/google-chrome-canary' ]] && continue
    _s "Downloading:  ${cask}"
    brew fetch --cask ${cask}
done

_i "Installing Homebrew casks..."
for cask in ${casks[@]}; do
	renew_sudo
    _s "Installing:  ${cask}"
    brew install --cask ${cask}
done

_i "Removing old versions (cleanup)... "
brew cleanup
