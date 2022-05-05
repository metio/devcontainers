# dev-containers

This repository contains OCI base images that can be used to develop with a  specific programming language and its
language server. All images are signed with [cosign](https://github.com/sigstore/cosign).

## Available Images

### [`ghcr.io/metio/dev-containers/clojure`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fclojure)

[Clojure](https://clojure.org/) + [Clojure Language Server](https://github.com/clojure-lsp/clojure-lsp). Available tags:

- `latest`: Follows `docker.io/library/clojure:latest` and installs clojure-lsp master.

### [`ghcr.io/metio/dev-containers/crystal`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fcrystal)

[Crystal](https://crystal-lang.org/) + [Crystal Language Server](https://github.com/elbywan/crystalline). Available tags:

- `latest`: Follows `docker.io/crystallang/crystal:latest` and installs latest released version of crystalline.

### [`ghcr.io/metio/dev-containers/go`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fgo)

[Go](https://golang.org/) + [Go Language Server](https://github.com/golang/tools/tree/master/gopls). Available tags:

- `latest`: Follows `docker.io/library/golang:latest` and installs latest golang.org/x/tools/gopls.
 
### [`ghcr.io/metio/dev-containers/haskell`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fhaskell)

[Haskell](https://www.haskell.org/) + [Haskell Language Server](https://github.com/haskell/haskell-language-server). Available tags:

- `latest`: Follows `docker.io/library/haskell:latest`, installs latest ghcup and uses that to install latest hls.

### [`ghcr.io/metio/dev-containers/java`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fjava)

[Java](https://www.java.com/) + [GraalVM](https://www.graalvm.org/) + [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). Available tags:

- `latest-graalvm`: Follows `docker.io/library/maven:3-openjdk-17` and installs latest Graal + JDTLS.

### [`ghcr.io/metio/dev-containers/julia`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fjulia)

[Julia](https://julialang.org/) + [Julia Language Server](https://github.com/julia-vscode/LanguageServer.jl). Available tags:

- `latest`: Follows `docker.io/library/julia:latest` and installs latest LanguageServer.

### [`ghcr.io/metio/dev-containers/nim`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fnim)

[Nim](https://nim-lang.org/) + [Nim Language Server](https://github.com/PMunch/nimlsp). Available tags:

- `latest`: Follows `docker.io/nimlang/nim:latest` and installs latest nimlsp with nimble.

### [`ghcr.io/metio/dev-containers/nix`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fnix)

[Nix](https://nixos.org/) + [Nix Language Server](https://github.com/nix-community/rnix-lsp). Available tags:

- `latest`: Follows `docker.io/nixos/nix:latest` and installs rnix-lsp master.

### [`ghcr.io/metio/dev-containers/nodejs`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fnodejs)

[NodeJS](https://nodejs.org/) + [TypeScript Language Server](https://github.com/typescript-language-server/typescript-language-server). Available tags:

- `latest`: Follows `docker.io/library/node:latest` and installs latest released typescript-language-server.

### [`ghcr.io/metio/dev-containers/perl`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fperl)

[Perl](https://www.perl.org/) + [Perl Language Server](https://github.com/FractalBoy/perl-language-server). Available tags:

- `latest`: Follows `docker.io/library/perl:latest` and installs latest PLS from CPAN.

### [`ghcr.io/metio/dev-containers/prolog`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fprolog)

[SWI Prolog](https://www.swi-prolog.org/) + [Prolog Language Server](https://github.com/jamesnvc/lsp_server). Available tags:

- `latest`: Follows `docker.io/library/swipl:latest` and installs latest lsp_server.

### [`ghcr.io/metio/dev-containers/python`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fpython)

[Python](https://www.python.org/) + [Python Language Server](https://github.com/python-lsp/python-lsp-server). Available tags:

- `latest`: Follows `docker.io/library/python:latest` and installs latest released python-lsp-server.

### [`ghcr.io/metio/dev-containers/r`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fr)

[R](https://www.r-project.org/) + [R Language Server](https://github.com/REditorSupport/languageserver). Available tags:

- `latest`: Follows `docker.io/library/r-base:latest` and installs latest languageserver.

### [`ghcr.io/metio/dev-containers/ruby`](https://github.com/orgs/metio/packages/container/package/dev-containers%2Fruby)

[Ruby](https://www.ruby-lang.org/) + [Ruby Language Server](https://github.com/castwide/solargraph). Available tags:

- `latest`: Follows `docker.io/library/ruby:latest` and installs latest released solargraph.

## License

```
To the extent possible under law, the author(s) have dedicated all copyright
and related and neighboring rights to this software to the public domain
worldwide. This software is distributed without any warranty.

You should have received a copy of the CC0 Public Domain Dedication along with
this software. If not, see https://creativecommons.org/publicdomain/zero/1.0/.
```
