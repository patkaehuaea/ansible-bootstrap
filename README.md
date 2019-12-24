# ansible-bootstrap

Manages the configuration of my desktop via ansible. Creates folders, installs
base applications, and configures OSX.

# setup

## main

The desktop playbook creates base directories and will install most of
the applications via homebrew. Use the `--extra-vars` argument to provide
the sudo password to ansible.

```
ansible-playbook desktop.yml -i hosts --extra-vars 'ansible_become_pass=*****'
```
## dotfiles

Ansible clones dotfiles from [patkaehuaea/dotfiles](https://github.com/patkaehuaea/dotfiles) then creates corresponding
directories, and symlinks in the user's home directory.

```
$ ansible-playbook dotfiles.yml -i hosts
```

## iterm

Ansible installs iTerm but we need to load preferences. This is how we retain
settings like remapped keys (options, etc.) and color profiles.

1. Open "Preferences"
2. Select "Load preferences from a custom folder or URL" > Choose ./files/
3. Select "Save changes to folder when iTerm2 quits"

# TODO

1. Update desktop.yml to use any other mechanism than a password on the command line.
