# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :serverhello,
  ecto_repos: [Serverhello.Repo]

# Configures the endpoint
config :serverhello, ServerhelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T/WZxiCzhR51isghFa+/cyWscCbeEEDro0gM4OwjSRXwHbpnLXmh/AEpFIqkFEbK",
  render_errors: [view: ServerhelloWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Serverhello.PubSub,
  live_view: [signing_salt: "zdB2v7wU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
