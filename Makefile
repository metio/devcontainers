# SPDX-FileCopyrightText: The devcontainers Authors
# SPDX-License-Identifier: 0BSD

###############################################################################
# PROLOGUE                                                                    #
###############################################################################
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.ONESHELL:
.DELETE_ON_ERROR:
.DEFAULT_GOAL := help
ifneq ($(strip $(shell command -v zsh 2> /dev/null)),)
  SHELL := zsh
  .SHELLFLAGS += -o pipefail
else ifneq ($(strip $(shell command -v bash 2> /dev/null)),)
  SHELL := bash
  .SHELLFLAGS += -o pipefail
else
  SHELL := sh
endif

###############################################################################
# COMMON RULES                                                                #
###############################################################################

##@ other
.PHONY: help
help: ## Display this help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make <target>\033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

###############################################################################
# PROJECT SPECIFIC RULES                                                      #
###############################################################################
-include project.mk
