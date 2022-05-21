# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# add folders to your path, so you can execute executables in that folder.
# export PATH="your_path:$PATH"

# openjdk
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# jenv (manage java versions)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# pixie cli
export PATH="/Users/alexon/bin:$PATH"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# zsh completions (brew install zsh-completions)
if type brew &>/dev/null; then
   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
   
   autoload -Uz compinit
   compinit
fi


# zsh-syntax-highlighting (brew install zsh-syntax-highlighting)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions (brew install zsh-autosuggestions)
# To activate the autosuggestions, add the following at the end of your .zshrc or .zprofile file.
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Suggest aliases for commands
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

#suggests how to install when a commmand not found
source /opt/homebrew/Library/Taps/homebrew/homebrew-command-not-found/handler.sh

# create a new folder ~/.zsh and put your zsh packages/plugins

# these plugins come from oh my zsh
# source /Users/alexon/.zsh/sudo-plugin/sudo.plugin.zsh
source ~/.zsh/sudo-plugin/sudo.plugin.zsh
source ~/.zsh/web-search/web-search.zsh
source ~/.zsh/copydir/copydir.zsh
source ~/.zsh/copyfile/copyfile.zsh
 

# colorls (gem install colorls && brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font)
# https://github.com/athityakumar/colorls
# man gem colors
#source /Library/Ruby/Gems/2.6.0/gems/colorls-1.4.4/lib/tab_complete.sh
source $(dirname $(gem which colorls))/tab_complete.sh

alias ls="colorls --sort-dirs"
alias lc="colorls --tree --light"

# ncdu : for find/delete programs easily.
# brew install ncdu
# ncdu

# navigation by tabs
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select

# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Include hidden files.
zmodload zsh/complist
compinit
_comp_options+=(globdots)


# gives description of the pc (brew install neofetch)
# neofetch

# brew install cowboy and fortune
fortune | cowsay -f tux

# terminal designs

# Give us color, try (man cat)
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)
