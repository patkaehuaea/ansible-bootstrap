# ansible-bootstrap

Manages the configuration of my desktop via ansible. Creates folders, installs
base applications, and configures OSX.

# usage

## prerequisites

Install xcode and homebrew

xcode: ## Runs 'xcode-select --install' to install xcode and git.

homebrew: ## Installs homebrew for OSX.
    # Bypass need to hit RETURN key by using piping to yes.
    @yes '' | /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# main


```
chsh -s /opt/homebrew/bin/fish
```


## osx

### vim

Install vim plugins using Vundle from the command line.

```
vim +PluginInstall +qall
```

Alternatively, install from within vim.

```
:PluginInstall
```
