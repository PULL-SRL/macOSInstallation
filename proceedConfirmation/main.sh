#################################################
@ "Installing profile: ${installationProfile}"
#################################################

@@ "Do you want to continue? (Y/n)"

read -r -n 1

if [[ $REPLY =~ ^[Nn]$ ]]; then
    exit 1
fi
