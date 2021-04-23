# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pipsqueak,
  ecto_repos: [Pipsqueak.Repo]

# Configures the endpoint
config :pipsqueak, PipsqueakWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pxZGrLR8NSDGPn3C0HVym5G8Z70OQZAWjNm4X5xEJfgTFVkMH+xQqUX1FDN6a8MQ",
  render_errors: [view: PipsqueakWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Pipsqueak.PubSub,
  live_view: [signing_salt: "H8qB0nAo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
