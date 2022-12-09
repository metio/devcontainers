# devcontainers-graalvm

[GraalVM](https://www.graalvm.org/) with [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `17`: Follows `docker.io/library/maven:3-eclipse-temurin-17` and installs latest Graal + JDTLS.
- `11`: Follows `docker.io/library/maven:3-eclipse-temurin-11` and installs latest Graal + JDTLS.
