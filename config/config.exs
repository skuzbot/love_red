# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :love_red,
  ecto_repos: [LoveRed.Repo]

# Configures the endpoint
config :love_red, LoveRedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  render_errors: [view: LoveRedWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: LoveRed.PubSub, adapter: Phoenix.PubSub.PG2]

config :love_red, node_server: "http://localhost:3000"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
