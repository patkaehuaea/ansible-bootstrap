.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

bootstrap: deps playbook ## Installs prerequisites needed to bootstrap on OSX.

deps: ## Installs ansible so we can run bootstrap.
	@sudo pacman -S ansible
	@ansible-galaxy install geerlingguy.dotfiles
	@ansible-galaxy install kewlfft.aur

playbook: ## Runs home-arch.yml playbook on localhost.
	@ansible-playbook -K -i hosts home-arch.yml
