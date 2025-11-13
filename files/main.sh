#################################################
@ "Files"
#################################################
 
_i "Installing files..."

# Dotfiles
cp files/.aliases ~/.aliases
echo 'source ~/.aliases' >> ~/.zshrc

# Git
cp files/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
