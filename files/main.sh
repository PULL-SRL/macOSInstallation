#################################################
@ "Files"
#################################################
 
_i "Installing files..."

# Dotfiles
cp files/.aliases ~/.aliases
echo '\nsource ~/.aliases' >> ~/.zshrc

# Git
cp files/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
