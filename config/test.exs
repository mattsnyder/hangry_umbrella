import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hangry_web, HangryWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "shNfuEqFf5HLS+45/hfwi02i/LqEhX0z9ZJqMUF6cycxHUOXnztTOylsOtXKiySs",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :hangry, Hangry.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
