SHELL = /bin/sh
.SUFFIXES:

container_tool ?= podman
hadolint_version ?= latest
upstream ?= https://github.com/metio/devcontainers
repository ?= metio

build-image = $(container_tool) build \
	--tag $(repository)/$(1):$(2) \
	--label org.opencontainers.image.title="$(1)" \
	--label org.opencontainers.image.description="Image for $(1) development" \
	--label org.opencontainers.image.licenses="CC0" \
	--label org.opencontainers.image.vendor="metio.wtf" \
	--label org.opencontainers.image.url="$(upstream)" \
	--label org.opencontainers.image.documentation="$(upstream)" \
	--label org.opencontainers.image.source="$(upstream)/languages/$(1)/$(2)" \
	--label org.opencontainers.image.version="$(2)" \
	--label org.opencontainers.image.revision="$(shell git rev-parse HEAD)" \
	--label org.opencontainers.image.created="$(shell date --rfc-3339=seconds)" \
	--file Containerfile \
	./languages/$(1)/$(2)

hadolint = $(container_tool) run \
	--rm \
	--interactive \
	--env HADOLINT_IGNORE=DL3059,DL3007 \
	docker.io/hadolint/hadolint:$(hadolint_version) < ./languages/$(1)/$(2)/Containerfile
dockerfilelint = $(container_tool) run \
	--rm \
	--interactive \
 	docker.io/replicated/dockerfilelint < ./languages/$(1)/$(2)/Containerfile

.PHONY: help
help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: list
list: ## List all images
	$(container_tool) image list --filter reference=metio

.PHONY: clean
clean: ## Cleanup dangling images
	$(container_tool) system prune --force

.PHONY: clojure
clojure: ## Build image for Clojure development
	$(call build-image,clojure,latest)
.PHONY: clojure-lint
clojure-lint: ## Lint image for Clojure development
	$(call hadolint,clojure,latest)

.PHONY: crystal
crystal: ## Build image for Crystal development
	$(call build-image,crystal,latest)
.PHONY: crystal-lint
crystal-lint: ## Lint image for Crystal development
	$(call hadolint,crystal,latest)

.PHONY: dart
dart: ## Build image for Dart development
	$(call build-image,dart,latest)
.PHONY: dart-lint
dart-lint: ## Lint image for Dart development
	$(call hadolint,dart,latest)

.PHONY: deno
deno: ## Build image for Deno development
	$(call build-image,deno,latest)
.PHONY: deno-lint
deno-lint: ## Lint image for Deno development
	$(call hadolint,deno,latest)

.PHONY: elixir
elixir: ## Build image for Elixir development
	$(call build-image,elixir,latest)
.PHONY: elixir-lint
elixir-lint: ## Lint image for Elixir development
	$(call hadolint,elixir,latest)
.PHONY: elixir-110
elixir-110: ## Build image for Elixir development
	$(call build-image,elixir,1.10)
.PHONY: elixir-110-lint
elixir-110-lint: ## Lint image for Elixir development
	$(call hadolint,elixir,1.10)
.PHONY: elixir-111
elixir-111: ## Build image for Elixir development
	$(call build-image,elixir,1.11)
.PHONY: elixir-111-lint
elixir-111-lint: ## Lint image for Elixir development
	$(call hadolint,elixir,1.11)
.PHONY: elixir-112
elixir-112: ## Build image for Elixir development
	$(call build-image,elixir,1.12)
.PHONY: elixir-112-lint
elixir-112-lint: ## Lint image for Elixir development
	$(call hadolint,elixir,1.12)

.PHONY: erlang
erlang: ## Build image for Erlang development
	$(call build-image,erlang,latest)
.PHONY: erlang-lint
erlang-lint: ## Lint image for Erlang development
	$(call hadolint,erlang,latest)
.PHONY: erlang-25
erlang-25: ## Build image for Erlang development
	$(call build-image,erlang,25)
.PHONY: erlang-25-lint
erlang-25-lint: ## Lint image for Erlang development
	$(call hadolint,erlang,25)
.PHONY: erlang-24
erlang-24: ## Build image for Erlang development
	$(call build-image,erlang,24)
.PHONY: erlang-24-lint
erlang-24-lint: ## Lint image for Erlang development
	$(call hadolint,erlang,24)
.PHONY: erlang-23
erlang-23: ## Build image for Erlang development
	$(call build-image,erlang,23)
.PHONY: erlang-23-lint
erlang-23-lint: ## Lint image for Erlang development
	$(call hadolint,erlang,23)
.PHONY: erlang-22
erlang-22: ## Build image for Erlang development
	$(call build-image,erlang,22)
.PHONY: erlang-22-lint
erlang-22-lint: ## Lint image for Erlang development
	$(call hadolint,erlang,22)

.PHONY: go
go: ## Build image for Go development
	$(call build-image,go,latest)
.PHONY: go-lint
go-lint: ## Lint image for Go development
	$(call hadolint,go,latest)

.PHONY: haskell
haskell: ## Build image for Haskell development
	$(call build-image,haskell,latest)
.PHONY: haskell-lint
haskell-lint: ## Lint image for Haskell development
	$(call hadolint,haskell,latest)
.PHONY: haskell-810
haskell-810: ## Build image for Haskell development
	$(call build-image,haskell,8.10)
.PHONY: haskell-810-lint
haskell-810-lint: ## Lint image for Haskell development
	$(call hadolint,haskell,8.10)
.PHONY: haskell-90
haskell-90: ## Build image for Haskell development
	$(call build-image,haskell,9.0)
.PHONY: haskell-90-lint
haskell-90-lint: ## Lint image for Haskell development
	$(call hadolint,haskell,9.0)
.PHONY: haskell-92
haskell-92: ## Build image for Haskell development
	$(call build-image,haskell,9.2)
.PHONY: haskell-92-lint
haskell-92-lint: ## Lint image for Haskell development
	$(call hadolint,haskell,9.2)

.PHONY: haxe
haxe: ## Build image for Haxe development
	$(call build-image,haxe,latest)
.PHONY: haxe-lint
haxe-lint: ## Lint image for Haxe development
	$(call hadolint,haxe,latest)

.PHONY: java
java: ## Build image for Java development
	$(call build-image,java,latest)
.PHONY: java-lint
java-lint: ## Lint image for Java development
	$(call hadolint,java,latest)
.PHONY: java-8
java-8: ## Build image for Java development
	$(call build-image,java,8)
.PHONY: java-8-lint
java-8-lint: ## Lint image for Java development
	$(call hadolint,java,8)
.PHONY: java-11
java-11: ## Build image for Java development
	$(call build-image,java,11)
.PHONY: java-11-lint
java-11-lint: ## Lint image for Java development
	$(call hadolint,java,11)
.PHONY: java-17
java-17: ## Build image for Java development
	$(call build-image,java,17)
.PHONY: java-17-lint
java-17-lint: ## Lint image for Java development
	$(call hadolint,java,17)

.PHONY: graalvm
graalvm: ## Build image for Java development with GraalVM
	$(call build-image,graalvm,latest)
.PHONY: graalvm-lint
graalvm-lint: ## Lint image for Java development with GraalVM
	$(call hadolint,graalvm,latest)
.PHONY: graalvm-17
graalvm-17: ## Build image for Java development with GraalVM
	$(call build-image,graalvm,17)
.PHONY: graalvm-17-lint
graalvm-17-lint: ## Lint image for Java development with GraalVM
	$(call hadolint,graalvm,17)
.PHONY: graalvm-11
graalvm-11: ## Build image for Java development with GraalVM
	$(call build-image,graalvm,11)
.PHONY: graalvm-11-lint
graalvm-11-lint: ## Lint image for Java development with GraalVM
	$(call hadolint,graalvm,11)

.PHONY: julia
julia: ## Build image for Julia development
	$(call build-image,julia,latest)
.PHONY: julia-lint
julia-lint: ## Lint image for Julia development
	$(call hadolint,julia,latest)
.PHONY: julia-16
julia-16: ## Build image for Julia development
	$(call build-image,julia,1.6)
.PHONY: julia-16-lint
julia-16-lint: ## Lint image for Julia development
	$(call hadolint,julia,1.6)
.PHONY: julia-17
julia-17: ## Build image for Julia development
	$(call build-image,julia,1.7)
.PHONY: julia-17-lint
julia-17-lint: ## Lint image for Julia development
	$(call hadolint,julia,1.7)

.PHONY: nim
nim: ## Build image for Nim development
	$(call build-image,nim,latest)
.PHONY: nim-lint
nim-lint: ## Lint image for Nim development
	$(call hadolint,nim,latest)

.PHONY: nix
nix: ## Build image for Nix development
	$(call build-image,nix,latest)
.PHONY: nix-lint
nix-lint: ## Lint image for Nix development
	$(call hadolint,nix,latest)

.PHONY: nodejs
nodejs: ## Build image for NodeJS development
	$(call build-image,nodejs,latest)
.PHONY: nodejs-lint
nodejs-lint: ## Lint image for NodeJS development
	$(call hadolint,nodejs,latest)
.PHONY: nodejs-18
nodejs-18: ## Build image for NodeJS development
	$(call build-image,nodejs,18)
.PHONY: nodejs-18-lint
nodejs-18-lint: ## Lint image for NodeJS development
	$(call hadolint,nodejs,18)
.PHONY: nodejs-16
nodejs-16: ## Build image for NodeJS development
	$(call build-image,nodejs,16)
.PHONY: nodejs-16-lint
nodejs-16-lint: ## Lint image for NodeJS development
	$(call hadolint,nodejs,16)

.PHONY: perl
perl: ## Build image for Perl development
	$(call build-image,perl,latest)
.PHONY: perl-lint
perl-lint: ## Lint image for Perl development
	$(call hadolint,perl,latest)

.PHONY: php
php: ## Build image for PHP development
	$(call build-image,php,latest)
.PHONY: php-lint
php-lint: ## Lint image for PHP development
	$(call hadolint,php,latest)

.PHONY: prolog
prolog: ## Build image for Prolog development
	$(call build-image,prolog,latest)
.PHONY: prolog-lint
prolog-lint: ## Lint image for Prolog development
	$(call hadolint,prolog,latest)
.PHONY: prolog-stable
prolog-stable: ## Build image for Prolog development
	$(call build-image,prolog,stable)
.PHONY: prolo-stable-lint
prolog-stable-lint: ## Lint image for Prolog development
	$(call hadolint,prolog,stable)

.PHONY: python
python: ## Build image for Python development
	$(call build-image,python,latest)
.PHONY: python-lint
python-lint: ## Lint image for Python development
	$(call hadolint,python,latest)
.PHONY: python-37
python-37: ## Build image for Python development
	$(call build-image,python,3.7)
.PHONY: python-37-lint
python-37-lint: ## Lint image for Python development
	$(call hadolint,python,3.7)
.PHONY: python-38
python-38: ## Build image for Python development
	$(call build-image,python,3.8)
.PHONY: python-38-lint
python-38-lint: ## Lint image for Python development
	$(call hadolint,python,3.8)
.PHONY: python-39
python-39: ## Build image for Python development
	$(call build-image,python,3.9)
.PHONY: python-39-lint
python-39-lint: ## Lint image for Python development
	$(call hadolint,python,3.9)
.PHONY: python-310
python-310: ## Build image for Python development
	$(call build-image,python,3.10)
.PHONY: python-310-lint
python-310-lint: ## Lint image for Python development
	$(call hadolint,python,3.10)

.PHONY: r
r: ## Build image for R development
	$(call build-image,r,latest)
.PHONY: r-lint
r-lint: ## Lint image for R development
	$(call hadolint,r,latest)

.PHONY: ruby
ruby: ## Build image for Ruby development
	$(call build-image,ruby,latest)
.PHONY: ruby-lint
ruby-lint: ## Lint image for Ruby development
	$(call hadolint,ruby,latest)

.PHONY: rust
rust: ## Build image for Rust development
	$(call build-image,rust,latest)
.PHONY: rust-lint
rust-lint: ## Lint image for Rust development
	$(call hadolint,rust,latest)

.PHONY: swift
swift: ## Build image for Swift development
	$(call build-image,swift,latest)
.PHONY: swift-lint
swift-lint: ## Lint image for Swift development
	$(call hadolint,swift,latest)

.PHONY: terraform
terraform: ## Build image for Terraform development
	$(call build-image,terraform,latest)
.PHONY: terraform-lint
terraform-lint: ## Lint image for Terraform development
	$(call hadolint,terraform,latest)
