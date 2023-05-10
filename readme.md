# fucking-dots
Steps to install:
0. `mkdir ~/.config`
In case config folder doesn't exist, 1-st step will give you error.
1. `cp -r * ~/.config`
This will copy every file from this repo to your config folder
2. `cp .*rc ~`
This will copy .zshrc and .xinirc to your home directory.
3. `package_manager argument_to_add_pkgs $(cat pkg.txt)`
With this command you will install all the dependencies you need.
You will find them in pkg.txt

I riced it too long, but I am (not yet) satisfied
