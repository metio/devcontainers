# devcontainers-graalvm

[GraalVM](https://www.graalvm.org/) with [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). All images
are signed with [cosign](https://github.com/sigstore/cosign) and their SBOMs generated with
[syft](https://github.com/anchore/syft).

## Available Tags

- `latest`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `17`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `11`: Follows `docker.io/library/maven:3-eclipse-temurin-11` and installs latest Graal + JDTLS.
