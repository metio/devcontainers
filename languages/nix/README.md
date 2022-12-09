# devcontainers-nix

[Nix](https://nixos.org/) with [Nix Language Server](https://github.com/nix-community/rnix-lsp). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/nixos/nix:latest` and installs rnix-lsp master.
