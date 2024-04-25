# devcontainers-julia

[Julia](https://julialang.org/) with [Julia Language Server](https://github.com/julia-vscode/LanguageServer.jl). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Follows `docker.io/library/julia:latest` and installs latest LanguageServer.
- `1.10`: Follows `docker.io/library/julia:1.10` and installs latest LanguageServer.
- `1.6`: Follows `docker.io/library/julia:1.6` and installs latest LanguageServer.
