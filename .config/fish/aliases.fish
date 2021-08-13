alias sourcefish="source ~/.config/fish/config.fish && echo 'Fish shell profile reloaded.'"

# Alias for dotfiles management
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# alias vi and vim to open nvim instead
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

# alias ls to exa with compatibility aliases
alias ls="exa -a --icons --color=always -s type -F"
alias la="ls -a"
alias ll="ls -l --git"
alias l="ls -laH"
alias lg="ls -lG"

function nuke-docker
    set -l docker_container_names (docker ps --format "{{.Names}}")
    if test -n "$docker_container_names"
        docker kill $docker_container_names
    else
        echo "No docker containers running."
    end
  end

