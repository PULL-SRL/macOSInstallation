# Install Oh My Zsh
#################################################
@ "Installing Oh My Zsh"
#################################################

@@ "Do you want to install Oh My Zsh? (Y/n)"
read -r -n 1

if [[ -z $REPLY || $REPLY =~ ^[Yy]$ ]]; then
    open -a Terminal .
    sleep 1 
    open https://ohmyz.sh/
    sleep 1 
fi

@@ "Have you completed the Oh My Zsh installation? (Y/n)"
read -r -n 1
