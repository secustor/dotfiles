DOTFILES_DIR="$(cd "$(dirname "${(%):-%N}")" && pwd)"

# Oh my ZSH
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    fzf
    brew
    gh
    docker
    docker-compose
    git-extras
    kubectl
    web-search
)

## loading this before as we need it before omz is inialized
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
source $ZSH/oh-my-zsh.sh

# Starship
export STARSHIP_CONFIG="$DOTFILES_DIR/starship.toml"
eval "$(starship init zsh)"

# General
export PATH=$HOME/bin:/usr/local/bin:$PATH

# ls
alias ls='ls --color'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias lf='ls -haltr'

# Editor
export EDITOR=vim
alias vi=vim

# Go
export PATH="${GOPATH:-$HOME/go}/bin:$PATH"

# volta
export VOLTA_FEATURE_PNPM=1
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# JAVA
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Kubectl
alias k=kubectl
source <(kubectl completion zsh)
compdef k='kubectl'

# Helm
source <(helm completion zsh)

# Kubectx
alias kctx=kubectx
alias kns=kubens
compdef kctx='kubectx'
compdef kns='kubens'
