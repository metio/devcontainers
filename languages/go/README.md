# devcontainers-go

[Go](https://golang.org/) with [Go Language Server](https://github.com/golang/tools/tree/master/gopls). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/library/golang:latest` and installs latest golang.org/x/tools/gopls.
- `1.19`: Follows `docker.io/library/golang:1.19` and installs latest golang.org/x/tools/gopls.
- `1.18`: Follows `docker.io/library/golang:1.18` and installs latest golang.org/x/tools/gopls.
