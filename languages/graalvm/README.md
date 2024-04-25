# devcontainers-graalvm

[GraalVM](https://www.graalvm.org/) with [JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls). All images
are signed with [cosign](https://github.com/sigstore/cosign). Their [SBOMs](https://ntia.gov/page/software-bill-materials)
and [SLSA provenance](https://slsa.dev/provenance/) are created with [build-push-action](https://github.com/docker/build-push-action).

## Available Tags

- `latest`: Based on `ghcr.io/graalvm/graalvm-community:22` and installs latest Maven + JDTLS.
- `22`: Based `ghcr.io/graalvm/graalvm-community:22` and installs latest Maven + JDTLS.
- `21`: Based `ghcr.io/graalvm/graalvm-community:21` and installs latest Maven + JDTLS.
- `17`: Based `ghcr.io/graalvm/graalvm-community:17` and installs latest Maven + JDTLS.
