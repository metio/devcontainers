# devcontainers-graalvm

[GraalVM](https://www.graalvm.org/) with [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `17`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `11`: Follows `docker.io/library/maven:3-eclipse-temurin-11` and installs latest Graal + JDTLS.
