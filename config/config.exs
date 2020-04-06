# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :doh_tracker,
  ecto_repos: [DohTracker.Repo]

# Configures the endpoint
config :doh_tracker, DohTrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0Gb82+tXV043RXbwG2c90mwYlsOkAbw6lTZcwlYzSGGaselJiCPv1W87sdQcwoe/",
  render_errors: [view: DohTrackerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DohTracker.PubSub,
  live_view: [signing_salt: "5kDOCyc1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
