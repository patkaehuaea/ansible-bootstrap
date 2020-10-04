# ansible-bootstrap

Manages the configuration of my desktop via ansible. Creates folders, installs
base applications, and configures OSX.

# usage

## prerequisites

### arch

Install ansible via pacman:

```
$ sudo pacman -S ansible
```

Install prerequisite Ansible modules from the Ansible Galaxy:

```
ansible-galaxy install kewlfft.aur
ansible-galaxy install geerlingguy.dotfiles
```

# main

The main.yml file calls all task files under the `/tasks` directory. Use the `-K` argument to prompt for the
BECOME password and allow privileged execution.

```
ansible-playbook -K -i hosts main.yml
```

## arch

Change the default shell to zsh when complete:

```
chsh -s /bin/zsh
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

### iterm

Ansible installs iTerm but we need to load preferences. This is how we retain
settings like remapped keys (options, etc.) and color profiles.

1. Open "Preferences"
2. Select "Load preferences from a custom folder or URL" > Choose ./files/
3. Select "Save changes to folder when iTerm2 quits"

# TODO

1. Make / verify idempotent homebrew package install.
2. Add homebrew install.
3. Add XCode CLI install `xcode-select --install`.
4. Add ansible install.
