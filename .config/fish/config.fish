if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR="lvim"

set -x HOMEBREW_NO_ANALYTICS 1

fish_add_path "$HOME/Repos/1p/webbook/scripts"
fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/.local/bin"

source $HOME/.config/fish/check-globals.fish
source $HOME/.config/fish/aliases.fish

starship init fish | source
