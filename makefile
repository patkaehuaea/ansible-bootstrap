.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

bootstrap: xcode homebrew ansible ## Installs prerequisites needed to bootstrap on OSX.

xcode: ## Runs 'xcode-select --install' to install xcode and git.

homebrew: ## Installs homebrew for OSX.
	# Bypass need to hit RETURN key by using piping to yes.
	@yes '' | /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

ansible: ## Installs ansible so we can run bootstrap.
	@brew update
	@brew install ansible

#ansible: ## Runs main.yml playbook on localhost.
#	ansible-playbook main.yml
