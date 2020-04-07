# Config Document for my setup

Contains several tools I found usefull.


[[toc]]

# Install zimfw

    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Install Nvim
    brew install nvim

    Create ~/.config/nvim if not exists

> Update init.vim with the file in directory.


# Install FZF

    brew install fzf

# Install nerd-font

    brew tap homebrew/cask-fonts
    brew cask install font-hack-nerd-font

# Install powerlevel9k theme
    brew tap sambadevi/powerlevel9k
    brew install powerlevel9k

# Install Ranger
    pip install ranger-fm

    Install nerd-font

> Update rc.conf & scope.sh

# Install neofetch
    brew install neofetch

# Update .zshrc with
    export EDITOR='nvim'
>
    export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
>
    export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
>
    source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
>
    neofetch 

# Problems:

### Python2.7 (Ranger cannot start properly)
> Error: An exception occurred within a child process:
FormulaUnavailableError: No available formula with the name "/usr/local/opt/python@2/.brew/python@2.rb

Caused by homebrew not maintaining python2 any longer, fix by:
    copy the content [link](https://raw.githubusercontent.com/Homebrew/homebrew-core/94d572a132a63651739fef1931f540404b7eaa31/Formula/python%402.rb) to yo) to your local and save as ur local and save as
    python@2.rb (any place works)
    brew reinstall python@2

### MarkPreview Browser Not showing up (nvim)
> Go to markPreview dir under plugged and manually run:
    npm install

### Nvim plug not working properly
> **The most common issue is that the default rtp does not include the plugged path, fix by
> adding:**

> following line before plug#begin
    set rtp+=~/.config/nvim
