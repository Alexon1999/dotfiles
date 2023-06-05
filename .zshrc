# gives description of the pc (brew install neofetch)
# neofetch

# brew install cowsay and fortune
fortune -s | cowsay -f tux

# brew install toilet
# toilet $(whoami) | cowsay -n -f tux

# displays Weather of your current location by IP address
# curl -s 'wttr.in/?0pq&lang=fr' 2> /dev/null

# Git branch in prompt.
# https://blog.devgenius.io/customize-the-macos-terminal-zsh-4cb387e4f447
autoload -Uz vcs_info
precmd() {vcs_info}
zstyle ':vcs_info:git:*' formats 'on %F{010} %b%f '
setopt PROMPT_SUBST

# by default, PROMPT='%n@%m %. %% '
PROMPT='🐼 %n %F{cyan}  %.%f ${vcs_info_msg_0_} '

#autoload colors; colors
#echo "Welcome Back $fg[magenta]$(whoami)$reset_color"
#echo ""
