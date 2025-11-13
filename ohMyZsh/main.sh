# Install Oh My Zsh
#################################################
@ "Installing Oh My Zsh"
#################################################

@@ "Do you want to continue? (Y/n)"
read -r -n 1

if [[ $REPLY =~ ^[Yy]$ ]]; then
    open -a Terminal .
    open https://ohmyz.sh/
fi
