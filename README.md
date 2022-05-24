# devcontainers

This repository contains OCI base images that can be used to develop with a specific programming language and its
language server. All images are signed with [cosign](https://github.com/sigstore/cosign).

## Available Images

### [`ghcr.io/metio/devcontainers/clojure`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fclojure)

[Clojure](https://clojure.org/) + [Clojure Language Server](https://github.com/clojure-lsp/clojure-lsp). Available tags:

- `latest`: Follows `docker.io/library/clojure:latest` and installs clojure-lsp master.

### [`ghcr.io/metio/devcontainers/crystal`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fcrystal)

[Crystal](https://crystal-lang.org/) + [Crystal Language Server](https://github.com/elbywan/crystalline). Available tags:

- `latest`: Follows `docker.io/crystallang/crystal:latest` and installs latest released version of crystalline.

### [`ghcr.io/metio/devcontainers/go`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fgo)

[Go](https://golang.org/) + [Go Language Server](https://github.com/golang/tools/tree/master/gopls). Available tags:

- `latest`: Follows `docker.io/library/golang:latest` and installs latest golang.org/x/tools/gopls.

### [`ghcr.io/metio/devcontainers/graalvm`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fgraalvm)

[GraalVM](https://www.graalvm.org/) + [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). Available tags:

- `latest`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `17`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `11`: Follows `docker.io/library/maven:3-eclipse-temurin-11` and installs latest Graal + JDTLS.

### [`ghcr.io/metio/devcontainers/haskell`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fhaskell)

[Haskell](https://www.haskell.org/) + [Haskell Language Server](https://github.com/haskell/haskell-language-server). Available tags:

- `latest`: Follows `docker.io/library/haskell:latest`, installs latest ghcup and uses that to install latest hls.
- `9.2`: Follows `docker.io/library/haskell:9.2`, installs latest ghcup and uses that to install latest hls.
- `9.0`: Follows `docker.io/library/haskell:9.0`, installs latest ghcup and uses that to install latest hls.
- `8.10`: Follows `docker.io/library/haskell:8.10`, installs latest ghcup and uses that to install latest hls.

### [`ghcr.io/metio/devcontainers/java`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fjava)

[Java](https://www.java.com/) + [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). Available tags:

- `latest`: Follows `docker.io/library/maven:latest` and installs latest JDTLS.
- `17`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest JDTLS.
- `11`: Follows `docker.io/library/maven:3-eclipse-temurin-11` and installs latest JDTLS.
- `8`: Follows `docker.io/library/maven:3-eclipse-temurin-8` and installs latest JDTLS.

### [`ghcr.io/metio/devcontainers/julia`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fjulia)

[Julia](https://julialang.org/) + [Julia Language Server](https://github.com/julia-vscode/LanguageServer.jl). Available tags:

- `latest`: Follows `docker.io/library/julia:latest` and installs latest LanguageServer.

### [`ghcr.io/metio/devcontainers/nim`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fnim)

[Nim](https://nim-lang.org/) + [Nim Language Server](https://github.com/PMunch/nimlsp). Available tags:

- `latest`: Follows `docker.io/nimlang/nim:latest` and installs latest nimlsp with nimble.

### [`ghcr.io/metio/devcontainers/nix`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fnix)

[Nix](https://nixos.org/) + [Nix Language Server](https://github.com/nix-community/rnix-lsp). Available tags:

- `latest`: Follows `docker.io/nixos/nix:latest` and installs rnix-lsp master.

### [`ghcr.io/metio/devcontainers/nodejs`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fnodejs)

[NodeJS](https://nodejs.org/) + [TypeScript Language Server](https://github.com/typescript-language-server/typescript-language-server). Available tags:

- `latest`: Follows `docker.io/library/node:latest` and installs latest released typescript-language-server.
- `18`: Follows `docker.io/library/node:18` and installs latest released typescript-language-server.
- `16`: Follows `docker.io/library/node:16` and installs latest released typescript-language-server.

### [`ghcr.io/metio/devcontainers/perl`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fperl)

[Perl](https://www.perl.org/) + [Perl Language Server](https://github.com/FractalBoy/perl-language-server). Available tags:

- `latest`: Follows `docker.io/library/perl:latest` and installs latest PLS from CPAN.

### [`ghcr.io/metio/devcontainers/prolog`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fprolog)

[SWI Prolog](https://www.swi-prolog.org/) + [Prolog Language Server](https://github.com/jamesnvc/lsp_server). Available tags:

- `latest`: Follows `docker.io/library/swipl:latest` and installs latest lsp_server.

### [`ghcr.io/metio/devcontainers/python`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fpython)

[Python](https://www.python.org/) + [Python Language Server](https://github.com/python-lsp/python-lsp-server). Available tags:

- `latest`: Follows `docker.io/library/python:latest` and installs latest released python-lsp-server.
- `3.10`: Follows `docker.io/library/python:3.10` and installs latest released python-lsp-server.
- `3.9`: Follows `docker.io/library/python:3.9` and installs latest released python-lsp-server.
- `3.8`: Follows `docker.io/library/python:3.8` and installs latest released python-lsp-server.
- `3.7`: Follows `docker.io/library/python:3.7` and installs latest released python-lsp-server.

### [`ghcr.io/metio/devcontainers/r`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fr)

[R](https://www.r-project.org/) + [R Language Server](https://github.com/REditorSupport/languageserver). Available tags:

- `latest`: Follows `docker.io/library/r-base:latest` and installs latest languageserver.

### [`ghcr.io/metio/devcontainers/ruby`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fruby)

[Ruby](https://www.ruby-lang.org/) + [Ruby Language Server](https://github.com/castwide/solargraph). Available tags:

- `latest`: Follows `docker.io/library/ruby:latest` and installs latest released solargraph.

### [`ghcr.io/metio/devcontainers/terraform`](https://github.com/orgs/metio/packages/container/package/devcontainers%2Fterraform)

[Terraform](https://terraform.io/) + [Terraform Language Server](https://github.com/hashicorp/terraform-ls). Available tags:

- `latest`: Follows `docker.io/hashicorp/terraform:latest` and installs latest released terraform-ls.

## License

```
To the extent possible under law, the author(s) have dedicated all copyright
and related and neighboring rights to this software to the public domain
worldwide. This software is distributed without any warranty.

You should have received a copy of the CC0 Public Domain Dedication along with
this software. If not, see https://creativecommons.org/publicdomain/zero/1.0/.
```
