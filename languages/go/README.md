# devcontainers-go

[Go](https://golang.org/) with [Go Language Server](https://github.com/golang/tools/tree/master/gopls). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Follows `docker.io/library/golang:latest` and installs latest golang.org/x/tools/gopls.
- `1.22`: Follows `docker.io/library/golang:1.22` and installs latest golang.org/x/tools/gopls.
- `1.21`: Follows `docker.io/library/golang:1.21` and installs latest golang.org/x/tools/gopls.
