# devcontainers-nodejs

[NodeJS](https://nodejs.org/) with
[TypeScript Language Server](https://github.com/typescript-language-server/typescript-language-server). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Follows `docker.io/library/node:latest` and installs latest released typescript-language-server.
- `20`: Follows `docker.io/library/node:20` and installs latest released typescript-language-server.
- `18`: Follows `docker.io/library/node:18` and installs latest released typescript-language-server.
