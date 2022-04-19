if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR="nvim"

set -x HOMEBREW_NO_ANALYTICS 1

fish_add_path "$HOME/Repos/1p/webbook/scripts"
fish_add_path --path "$HOME/aaron/.nvm/versions/node/v14.17.0/bin"
fish_add_path "$HOME/.cargo/bin"

source $HOME/.config/fish/check-globals.fish
source $HOME/.config/fish/aliases.fish

starship init fish | source

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
