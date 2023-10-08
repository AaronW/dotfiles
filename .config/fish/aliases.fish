alias sourcefish="source ~/.config/fish/config.fish && echo 'Fish shell profile reloaded.'"

# Alias for dotfiles management
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# alias vi and vim to open nvim instead
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

# alias ls to eza with compatibility aliases
alias ls="eza -a --icons --color=always -s type -F"
alias la="eza -a"
alias ll="eza -l --git"
alias l="eza -laH"
alias lg="eza -lG"

function nuke
    docker kill (docker ps --format "{{.Names}}")
    killall node
    killall hugo
  end

function nuke-docker
    set -l docker_container_names (docker ps --format "{{.Names}}")
    if test -n "$docker_container_names"
        docker kill $docker_container_names
    else
        echo "No docker containers running."
    end
  end
