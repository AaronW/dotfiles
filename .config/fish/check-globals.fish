function check_globals
    if test -z "(ls ~/Library/Fonts | grep Fira\ Code)"
        echo 'Install Fira Code NerdFont: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode'
    end

    if test -z "(ls ~/Library/Fonts | grep JetBrainsMono\ Nerd\ Font\ Mono)"
        echo 'Install JetBrainsMono NerdFont: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono'
    end

    if test -z "(ls ~/Library/Fonts | grep nonicons)"
        echo 'Install nonicons font: https://github.com/yamatsum/nonicons'
    end

    if ! type starship >/dev/null
        echo 'Install starship: https://github.com/starship/starship'
    end

    if ! type omf >/dev/null
        echo 'Install oh-my-fish: https://github.com/oh-my-fish/oh-my-fish'
    end

    if ! type fisher >/dev/null
        echo 'Install fisher: https://github.com/jorgebucaran/fisher'
    end

    if ! type nvim >/dev/null
        echo 'Install neovim: https://github.com/neovim/neovim'
    end

    if ! type rg >/dev/null
        echo 'Install RipGrep: https://github.com/BurntSushi/ripgrep'
    end

    if ! type nvm >/dev/null
        echo 'Install nvm.fish: https://github.com/jorgebucaran/nvm.fish'
    end

    if ! type node >/dev/null
        echo 'Install node.js via nvm'
    end

    if ! type prettier >/dev/null
        echo 'Install prettier globally for vim integration: npm i -g prettier'
    end

    if ! type eslint_d &>/dev/null
        echo "Install eslint_d globally for Neovim integration: npm i -g eslint_d"
    end

    if ! type typescript-language-server >/dev/null
        echo 'Install tsserver globally for vim integration: npm i -g typescript typescript-language-server'
    end

    if ! type vscode-css-language-server >/dev/null
        echo 'Install tsserver globally for vim integration: npm i -g vscode-langservers-extracted'
    end

    if ! type diagnostic-languageserver >/dev/null
        echo 'Install diagnostic-languageserver: npm i -g diagnostic-languageserver'
    end

    if ! type eslint >/dev/null
        echo 'Install eslint globally for vim integration: npm i -g eslint'
    end

    if ! type bash-language-server >/dev/null
        echo 'Install bash-language-server: npm i -g bash-language-server'
    end

    if ! type neovim-node-host >/dev/null
        echo 'Install neovim helper: npm i -g neovim'
    end

    if ! type cargo >/dev/null
        echo 'Install rustup: curl --proto \'=https\' --tlsv1.2 -sSf https://sh.rustup.rs | sh'
    end

    if ! type exa >/dev/null
        echo 'Install exa: brew install exa'
    end

    if ! type stylua >/dev/null
        echo 'Install stylua: cargo install stylua --features lua52'
    end

    if [ -z (pip3 list | grep -F pynvim) ]
        echo "Install pynvim: pip3 install pynvim"
    end

    if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start" ]
        echo "Install vim packer: https://github.com/wbthomason/packer.nvim#quickstart"
    end

    return 0
end
