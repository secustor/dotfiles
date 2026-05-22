# dotfiles

## Introduction

Welcome to my personal dotfiles repository! 🎉

This is where I store my custom configuration files for various tools and environments I use. These dotfiles are tailored specifically to my needs and preferences, aiming to streamline my workflow and enhance productivity.

> [!NOTE]
> These configurations are designed **exclusively for my personal use**.
> Feel free to explore and get inspiration, but please use with caution and adapt configurations to suit your own setup if needed!​

## Homebrew Packages

A `Brewfile` is included to install all required CLI tools and applications via [Homebrew Bundle](https://docs.brew.sh/Brew-Bundle-and-Brewfile):

```shell
brew bundle install
```

To check whether all packages are already installed:

```shell
brew bundle check
```

## Usage

```shell
# Clone the repo locally
cd <repos path>
git clone git@github.com:secustor/dotfiles.git

# Update your dotfiles
sed -i '1isource <repos path>/.zshrc' .zshrc
sed -i '1isource <repos path>/.vimrc' .vimrc

# Add gitconfig include
sed -i -e '$a\\n[include]\n    path = <repos path>/gitconfig' ~/.gitconfig

# Add Ghostty include command
echo "config-file = <repos path>/ghostty.config"
```
