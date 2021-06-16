# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_api,
  ecto_repos: [PhoenixApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :phoenix_api, PhoenixApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZpfKa9COPVPeN16nsw8o4etGTcx8cqW71M+z//GDUV7iqLd1H15EzZYuab1Xdwml",
  render_errors: [view: PhoenixApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PhoenixApi.PubSub,
  live_view: [signing_salt: "9ve8DDoi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
