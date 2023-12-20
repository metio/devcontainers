clojure-latest-build:
	$(call build-image,clojure,latest)
clojure-latest-lint:
	$(call hadolint,clojure,latest)

crystal-latest-build:
	$(call build-image,crystal,latest)
crystal-latest-lint:
	$(call hadolint,crystal,latest)

elixir-1.13-build:
	$(call build-image,elixir,1.13)
elixir-1.13-lint:
	$(call hadolint,elixir,1.13)

elixir-1.14-build:
	$(call build-image,elixir,1.14)
elixir-1.14-lint:
	$(call hadolint,elixir,1.14)

elixir-1.15-build:
	$(call build-image,elixir,1.15)
elixir-1.15-lint:
	$(call hadolint,elixir,1.15)

elixir-latest-build:
	$(call build-image,elixir,latest)
elixir-latest-lint:
	$(call hadolint,elixir,latest)

erlang-23-build:
	$(call build-image,erlang,23)
erlang-23-lint:
	$(call hadolint,erlang,23)

erlang-24-build:
	$(call build-image,erlang,24)
erlang-24-lint:
	$(call hadolint,erlang,24)

erlang-25-build:
	$(call build-image,erlang,25)
erlang-25-lint:
	$(call hadolint,erlang,25)

erlang-26-build:
	$(call build-image,erlang,26)
erlang-26-lint:
	$(call hadolint,erlang,26)

erlang-latest-build:
	$(call build-image,erlang,latest)
erlang-latest-lint:
	$(call hadolint,erlang,latest)

go-1.20-build:
	$(call build-image,go,1.20)
go-1.20-lint:
	$(call hadolint,go,1.20)

go-1.21-build:
	$(call build-image,go,1.21)
go-1.21-lint:
	$(call hadolint,go,1.21)

go-latest-build:
	$(call build-image,go,latest)
go-latest-lint:
	$(call hadolint,go,latest)

graalvm-17-build:
	$(call build-image,graalvm,17)
graalvm-17-lint:
	$(call hadolint,graalvm,17)

graalvm-21-build:
	$(call build-image,graalvm,21)
graalvm-21-lint:
	$(call hadolint,graalvm,21)

graalvm-latest-build:
	$(call build-image,graalvm,latest)
graalvm-latest-lint:
	$(call hadolint,graalvm,latest)

haskell-9.0-build:
	$(call build-image,haskell,9.0)
haskell-9.0-lint:
	$(call hadolint,haskell,9.0)

haskell-9.2-build:
	$(call build-image,haskell,9.2)
haskell-9.2-lint:
	$(call hadolint,haskell,9.2)

haskell-9.4-build:
	$(call build-image,haskell,9.4)
haskell-9.4-lint:
	$(call hadolint,haskell,9.4)

haskell-9.6-build:
	$(call build-image,haskell,9.6)
haskell-9.6-lint:
	$(call hadolint,haskell,9.6)

haskell-9.8-build:
	$(call build-image,haskell,9.8)
haskell-9.8-lint:
	$(call hadolint,haskell,9.8)

haskell-latest-build:
	$(call build-image,haskell,latest)
haskell-latest-lint:
	$(call hadolint,haskell,latest)

java-11-build:
	$(call build-image,java,11)
java-11-lint:
	$(call hadolint,java,11)

java-17-build:
	$(call build-image,java,17)
java-17-lint:
	$(call hadolint,java,17)

java-21-build:
	$(call build-image,java,21)
java-21-lint:
	$(call hadolint,java,21)

java-8-build:
	$(call build-image,java,8)
java-8-lint:
	$(call hadolint,java,8)

java-latest-build:
	$(call build-image,java,latest)
java-latest-lint:
	$(call hadolint,java,latest)

julia-1.6-build:
	$(call build-image,julia,1.6)
julia-1.6-lint:
	$(call hadolint,julia,1.6)

julia-1.9-build:
	$(call build-image,julia,1.9)
julia-1.9-lint:
	$(call hadolint,julia,1.9)

julia-latest-build:
	$(call build-image,julia,latest)
julia-latest-lint:
	$(call hadolint,julia,latest)

nim-latest-build:
	$(call build-image,nim,latest)
nim-latest-lint:
	$(call hadolint,nim,latest)

nodejs-18-build:
	$(call build-image,nodejs,18)
nodejs-18-lint:
	$(call hadolint,nodejs,18)

nodejs-20-build:
	$(call build-image,nodejs,20)
nodejs-20-lint:
	$(call hadolint,nodejs,20)

nodejs-latest-build:
	$(call build-image,nodejs,latest)
nodejs-latest-lint:
	$(call hadolint,nodejs,latest)

perl-latest-build:
	$(call build-image,perl,latest)
perl-latest-lint:
	$(call hadolint,perl,latest)

prolog-latest-build:
	$(call build-image,prolog,latest)
prolog-latest-lint:
	$(call hadolint,prolog,latest)

prolog-stable-build:
	$(call build-image,prolog,stable)
prolog-stable-lint:
	$(call hadolint,prolog,stable)

python-3.10-build:
	$(call build-image,python,3.10)
python-3.10-lint:
	$(call hadolint,python,3.10)

python-3.11-build:
	$(call build-image,python,3.11)
python-3.11-lint:
	$(call hadolint,python,3.11)

python-3.12-build:
	$(call build-image,python,3.12)
python-3.12-lint:
	$(call hadolint,python,3.12)

python-3.8-build:
	$(call build-image,python,3.8)
python-3.8-lint:
	$(call hadolint,python,3.8)

python-3.9-build:
	$(call build-image,python,3.9)
python-3.9-lint:
	$(call hadolint,python,3.9)

python-latest-build:
	$(call build-image,python,latest)
python-latest-lint:
	$(call hadolint,python,latest)

r-latest-build:
	$(call build-image,r,latest)
r-latest-lint:
	$(call hadolint,r,latest)

ruby-latest-build:
	$(call build-image,ruby,latest)
ruby-latest-lint:
	$(call hadolint,ruby,latest)

rust-latest-build:
	$(call build-image,rust,latest)
rust-latest-lint:
	$(call hadolint,rust,latest)

terraform-latest-build:
	$(call build-image,terraform,latest)
terraform-latest-lint:
	$(call hadolint,terraform,latest)

