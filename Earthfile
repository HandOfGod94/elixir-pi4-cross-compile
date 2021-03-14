FROM --platform=linux/arm/v7 elixir:1.11
RUN elixir -v
WORKDIR .

build:
  COPY lib lib
  COPY mix.exs mix.exs
  COPY mix.lock mix.lock
  ENV MIX_ENV=prod
  RUN mix local.hex --force && mix local.rebar --force && mix deps.get
  RUN mix release
  SAVE ARTIFACT _build/prod/pi_build-0.1.0.tar.gz AS LOCAL pi_build-0.1.0.tar.gz
