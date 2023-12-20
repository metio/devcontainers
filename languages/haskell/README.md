# devcontainers-haskell

[Haskell](https://www.haskell.org/) with [Haskell Language Server](https://github.com/haskell/haskell-language-server). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Follows `docker.io/library/haskell:latest`, installs latest ghcup and uses that to install latest hls.
- `9.8`: Follows `docker.io/library/haskell:9.8`, installs latest ghcup and uses that to install latest hls.
- `9.6`: Follows `docker.io/library/haskell:9.6`, installs latest ghcup and uses that to install latest hls.
- `9.4`: Follows `docker.io/library/haskell:9.4`, installs latest ghcup and uses that to install latest hls.
- `9.2`: Follows `docker.io/library/haskell:9.2`, installs latest ghcup and uses that to install latest hls.
- `9.0`: Follows `docker.io/library/haskell:9.0`, installs latest ghcup and uses that to install latest hls.
