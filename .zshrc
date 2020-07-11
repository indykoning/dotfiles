# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.composer/vendor/bin
DEFAULT_USER="$USER"
# export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
#export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
#export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  composer
  zsh-autosuggestions
  command-not-found
  laravel
  zsh-syntax-highlighting
  extract
  command-not-found
  colored-man-pages
  pj
  safe-paste
  thefuck
  timer
  yarn
  zsh-navigation-tools
)
[ -f $HOME/.additional_plugins ] && source $HOME/.additional_plugins
# plugins+=(profiles)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
[ -f $HOME/.aliases ] && source $HOME/.aliases
source $HOME/.general_aliases
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    [ -f $HOME/.linux_aliases ] && source $HOME/.linux_aliases
elif [[ "$OSTYPE" == "darwin"* ]]; then
    [ -f $HOME/.osx_aliases ] && source $HOME/.osx_aliases
fi


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

