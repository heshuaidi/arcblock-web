# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :arcblock_web, ArcblockWeb.Endpoint,
  url: [host: "127.0.0.1"],
  secret_key_base: "7jiHg0bE9aV/9yZg6llrGqlI73hfXx3zcV3Ro0ExmHldHbemdo2kM7rHfXrrHTev",
  render_errors: [view: ArcblockWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ArcblockWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
