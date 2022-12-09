# devcontainers-prolog

[SWI Prolog](https://www.swi-prolog.org/) with [Prolog Language Server](https://github.com/jamesnvc/lsp_server). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/library/swipl:latest` and installs latest lsp_server.
- `stable`: Follows `docker.io/library/swipl:stable` and installs latest lsp_server.
