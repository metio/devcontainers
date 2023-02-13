# devcontainers-nix

[Nix](https://nixos.org/) with [Nix Language Server](https://github.com/nix-community/rnix-lsp). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Follows `docker.io/nixos/nix:latest` and installs rnix-lsp master.
