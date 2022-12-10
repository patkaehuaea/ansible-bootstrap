# ansible-bootstrap

Manages the configuration of my desktop via ansible. Creates folders, installs
base applications, and configures OSX.

# usage

## prerequisites

1. xcode
2. homebrew
3. go-task

```
$ xcode-select --install

$ @yes '' | /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

$ brew install go-task/tap/go-task
```

## run

Run the default task to boostrap:

```
$ task
```

Set fish as default shell after install:

```
$ sudo echo "/opt/homebrew/bin/fish" >> /etc/shells

$ chsh -s /opt/homebrew/bin/fish
```

## list

List all available tasks:

```
$ task -l
```

## pre-commit

Run pre-commit hooks:

```
$ task precommit:run
```
