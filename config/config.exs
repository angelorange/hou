# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hou,
  ecto_repos: [Hou.Repo]

# Configures the endpoint
config :hou, HouWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3NyPztLZZPLbiwXtdN31HJYbYOA6M+agRgi9cwvXxN+fZD6a8yB9ckjbcTFr9+5m",
  render_errors: [view: HouWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hou.PubSub,
  live_view: [signing_salt: "oJp7DLxV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
