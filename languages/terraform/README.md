# devcontainers-terraform

[Terraform](https://terraform.io/) with [Terraform Language Server](https://github.com/hashicorp/terraform-ls). All images
are signed with [cosign](https://github.com/sigstore/cosign), their SBOMs generated with
[syft](https://github.com/anchore/syft), and their [SLSA provenance](https://slsa.dev/provenance/) with
[slsa-github-generator](https://github.com/slsa-framework/slsa-github-generator).

## Available Tags

- `latest`: Follows `docker.io/hashicorp/terraform:latest` and installs latest released terraform-ls.
