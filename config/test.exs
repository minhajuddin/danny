use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :danny, Danny.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :danny, Danny.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("APP_POSTGRES_USER"),
  password: System.get_env("APP_POSTGRES_PASSWORD"),
  hostname: System.get_env("POSTGRES_PORT_5432_TCP_ADDR"),
  database: System.get_env("APP_POSTGRES_DB"),
  pool: Ecto.Adapters.SQL.Sandbox
