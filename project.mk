MAKEFLAGS += --always-make
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
	--label org.opencontainers.image.licenses="0BSD" \
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

-include generated.mk

generated.mk: project.mk
	@for lld in languages/*; do \
	    lang=$$(basename "$${lld}"); \
	    for vld in languages/"$${lang}"/*; do \
	        version=$$(basename "$${vld}"); \
	        if [ -f "$${vld}/Containerfile" ]; then \
	            echo "$${lang}-$${version}-build:"; \
	            printf '\t$$(call build-image,%s,%s)\n' "$${lang}" "$${version}"; \
	            echo "$${lang}-$${version}-lint:"; \
	            printf '\t$$(call hadolint,%s,%s)\n' "$${lang}" "$${version}"; \
	            echo ;\
	        fi ;\
	    done ;\
	done > $@

list: ## List all images
	$(container_tool) image list --filter reference=metio

clean: ## Cleanup dangling images
	$(container_tool) system prune --force
