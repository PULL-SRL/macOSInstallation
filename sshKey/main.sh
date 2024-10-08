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
