# fucking-dots
Steps to install:
1. `mkdir ~/.config`
In case config folder doesn't exist, 1-st step will give you error.
2. `cp -r * ~/.config`
This will copy every file from this repo to your config folder
3. `cp .*rc ~`
This will copy .zshrc and .xinirc to your home directory.
4. `package_manager argument_to_add_pkgs $(cat pkg.txt)`
With this command you will install all the dependencies you need.
You will find them in pkg.txt
5. `chsh -s /usr/bin/fish`
If you want to change your shell for fish

I riced it too long, but I am (not yet) satisfied
