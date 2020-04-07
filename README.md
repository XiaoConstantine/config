# config
Nvim/Ranger

# Install zimfw

> curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Install Nvim
> brew install nvim

> Create ~/.config/nvim if not exists

> Update init.vim



# Install FZF

> brew install fzf

# Install nerd-font

> brew tap homebrew/cask-fonts
> brew cask install font-hack-nerd-font

# Install powerlevel9k theme
> brew tap sambadevi/powerlevel9k
> brew install powerlevel9k

# Install Ranger
> pip install ranger-fm

> Install nerd-font

> Update rc.conf & scope.sh

# Install neofetch
brew install neofetch

# Update .zshrc with
> export EDITOR='nvim'
>
> export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
>
> export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
>
> source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
>
> neofetch 
