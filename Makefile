DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitignore
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.PHONY: help list deploy init clean
.DEFAULT_GOAL := help

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

list: ## Show dotfiles in this repo
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

deploy: ## Create symlink to home directory
	@echo '==> Start to deploy dotfiles to home directory.'
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init: ## Setup environment settings
	@echo '==> Start to initialize dotfiles.'
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init/init.sh

install: deploy init ## Run make deploy, init

clean: ## Remove the dotfiles and this repo
	@echo 'Remove dotfiles in your home directory...'
	@-$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	-rm -rf $(DOTPATH)
