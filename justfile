# variables
container_tool := "podman"
hadolint_version := "latest"
upstream := "https://github.com/metio/dev-containers"

# Show all recipes
default:
    @just --list --unsorted

# Lint a Containerfile
lint containerfile:
    {{container_tool}} run \
        --rm \
        --interactive \
        --env HADOLINT_IGNORE=DL3059 \
        docker.io/hadolint/hadolint:{{hadolint_version}} < {{containerfile}}

# List all images
images:
    {{container_tool}} image list --filter reference=metio

# Cleanup dangling images
clean:
    {{container_tool}} system prune --force

# generic image builder recipe
_build-image language version:
    {{container_tool}} build \
        --tag metio/{{language}}:{{version}} \
        --label org.opencontainers.image.title="{{language}}" \
        --label org.opencontainers.image.description="Image for {{language}} development" \
        --label org.opencontainers.image.licenses="CC0" \
        --label org.opencontainers.image.vendor="metio.wtf" \
        --label org.opencontainers.image.url="{{upstream}}" \
        --label org.opencontainers.image.documentation="{{upstream}}" \
        --label org.opencontainers.image.source="{{upstream}}/languages/{{language}}/{{version}}" \
        --label org.opencontainers.image.version="{{version}}" \
        --label org.opencontainers.image.revision="$(git rev-parse HEAD)" \
        --label org.opencontainers.image.created="$(date --rfc-3339=seconds)" \
        --file Containerfile \
        {{justfile_directory()}}/languages/{{language}}/{{version}}

# Build image for Clojure development
clojure: (_build-image "clojure" "latest")

# Build image for Crystal development
crystal: (_build-image "crystal" "latest")

# Build image for Dart development
dart: (_build-image "dart" "latest")

# Build image for Deno development
deno: (_build-image "deno" "latest")

# Build image for Elixir development
elixir: (_build-image "elixir" "latest")

# Build image for Erlang development
erlang: (_build-image "erlang" "latest")

# Build image for Go development
go: (_build-image "go" "latest")

# Build image for Haskell development
haskell: (_build-image "haskell" "latest")

# Build image for Haxe development
haxe: (_build-image "haxe" "latest")

# Build image for Julia development
julia: (_build-image "julia" "latest")

# Build image for Nim development
nim: (_build-image "nim" "latest")

# Build image for Nix development
nix: (_build-image "nix" "latest")

# Build image for NodeJS development
nodejs: (_build-image "nodejs" "latest")

# Build image for Perl development
perl: (_build-image "perl" "latest")

# Build image for PHP development
php: (_build-image "php" "latest")

# Build image for Prolog development
prolog: (_build-image "prolog" "latest")

# Build image for Python development
python: (_build-image "python" "latest")

# Build image for R development
r: (_build-image "r" "latest")

# Build image for Ruby development
ruby: (_build-image "ruby" "latest")

# Build image for Rust development
rust: (_build-image "rust" "latest")

# Build image for Swift development
swift: (_build-image "swift" "latest")

# Build image for Terraform development
terraform: (_build-image "terraform" "latest")

