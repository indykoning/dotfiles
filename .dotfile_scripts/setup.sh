#!/bin/bash
# Set which folder to check fo OS specific files
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="linux"
fi

# Add startup shutdown script
if command -v systemctl &> /dev/null
then
    sudo cp ~/.dotfile_scripts/linux/start_and_stop.service /etc/systemd/system/start_and_stop.service
    systemctl enable start_and_stop
fi


# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install modules from brewfile
[ -f ~/.dotfile_scripts/$OS/Brewfile ] && brew bundle install --file=~/.dotfile_scripts/$OS/Brewfile
