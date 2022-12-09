# devcontainers-nodejs

[NodeJS](https://nodejs.org/) with
[TypeScript Language Server](https://github.com/typescript-language-server/typescript-language-server). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/library/node:latest` and installs latest released typescript-language-server.
- `18`: Follows `docker.io/library/node:18` and installs latest released typescript-language-server.
- `16`: Follows `docker.io/library/node:16` and installs latest released typescript-language-server.
