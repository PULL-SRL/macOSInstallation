#################################################
@ "Installing profile: ${installationProfile}"
#################################################

@@ "Do you want to continue? (Y/n)"

read -r -n 1

if [[ $REPLY =~ ^[Nn]$ ]]; then
    exit 1
fi

#################################################
@ "Set SSH Key"
#################################################

# Generate ssh key
_i "Checking for SSH key, generating one if it doesn't exist..."
[[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''

# Copy & paste ssh key to GitHub
_i "Copying public key to clipboard..."
_i "Paste it into your Github account..."
[[ -f ~/.ssh/id_rsa.pub ]] && pbcopy < ~/.ssh/id_rsa.pub
open https://github.com/account/ssh

# Confirm user has pasted the ssy key to GitHub
@@ "Have you pasted the ssh key (already in your clipboard) to GitHub? (Y)"
read -r -n 1

# Set sudo permissions for the rest of the processes
@ "Sudo"

@@ "Please enter your admin password"

until sudo --non-interactive true 2> /dev/null; do # if password is wrong, keep asking
    read -s -p '' sudo_password
    echo
    sudo --stdin --validate <<< "${sudo_password}" 2> /dev/null
done

_i "Keep-alive sudo time stamp until finished"
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

_i "Prevent computer from sleeping (caffeinate)"
sudo caffeinate -d -i -m -s -u &

#################################################
@ "Homebrew"
#################################################

# Install/update homebrew
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

_i "Installing Homebrew formulas..."
brew install ${formulas[@]}

_i "Installing Homebrew fonts..."
brew tap homebrew/cask-fonts
brew install cask ${fonts[@]}

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