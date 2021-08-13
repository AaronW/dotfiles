if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR="nvim"

set PATH $PATH "/Users/aaron/Repos/1p/webbook/scripts"

source $HOME/.config/fish/check-globals.fish
source $HOME/.config/fish/aliases.fish

starship init fish | source
