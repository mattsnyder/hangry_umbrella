# Hangry.Umbrella


# Make sure it all works

# Build our assets
```
mix deps.get
mix assets.deploy
mix phx.digest

export SECRET_KEY_BASE="$(mix phx.gen.secret)"
MIX_ENV=prod mix release
```

# Run it locally
`MIX_ENV=prod APP_NAME=hangry PORT=4000 _build/prod/rel/hangry/bin/hangry start`
- or -
`APP_NAME=hangry SECRET_KEY_BASE="$(mix phx.gen.secret)" MIX_ENV=prod PORT=4000 mix phx.server`

# Make sure it responds
`curl localhost:4000`