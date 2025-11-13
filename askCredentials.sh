
# Ask for email until it's not empty
while true; do
    read -p "Enter your Git email: " git_email
    if [[ -n $git_email ]]; then
        break
    else
        echo "Email cannot be empty. Please try again."
    fi
done

# Ask for name until it's not empty
while true; do
    read -p "Enter your Git name: " git_name
    if [[ -n $git_name ]]; then
        break
    else
        echo "Name cannot be empty. Please try again."
    fi
done

# Ask sudo permissions for the rest of the processes
until sudo --non-interactive true 2> /dev/null; do # if password is wrong, keep asking
    read -s -p 'Enter your Admin (sudo) password: ' sudo_password
    echo
    sudo --stdin --validate <<< "${sudo_password}" 2> /dev/null
done

_i "Keep-alive sudo time stamp until finished"
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

_i "Prevent computer from sleeping (caffeinate)"
sudo caffeinate -d -i -m -s -u &