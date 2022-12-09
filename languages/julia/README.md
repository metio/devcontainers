# devcontainers-julia

[Julia](https://julialang.org/) with [Julia Language Server](https://github.com/julia-vscode/LanguageServer.jl). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/library/julia:latest` and installs latest LanguageServer.
- `1.8`: Follows `docker.io/library/julia:1.8` and installs latest LanguageServer.
- `1.6`: Follows `docker.io/library/julia:1.6` and installs latest LanguageServer.
