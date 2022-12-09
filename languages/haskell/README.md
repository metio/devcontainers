# devcontainers-haskell

[Haskell](https://www.haskell.org/) with [Haskell Language Server](https://github.com/haskell/haskell-language-server).
All images are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/library/haskell:latest`, installs latest ghcup and uses that to install latest hls.
- `9.4`: Follows `docker.io/library/haskell:9.4`, installs latest ghcup and uses that to install latest hls.
- `9.2`: Follows `docker.io/library/haskell:9.2`, installs latest ghcup and uses that to install latest hls.
- `9.0`: Follows `docker.io/library/haskell:9.0`, installs latest ghcup and uses that to install latest hls.
- `8.10`: Follows `docker.io/library/haskell:8.10`, installs latest ghcup and uses that to install latest hls.
