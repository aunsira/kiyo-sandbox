# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kiyo_sandbox,
  ecto_repos: [KiyoSandbox.Repo]

# Configures the endpoint
config :kiyo_sandbox, KiyoSandboxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0w9fYRhmB+8xBFp3gF6FFe1tlnc+oLzFIj6xh9EBJQutg8uPsCf6HidfNPbKOL2q",
  render_errors: [view: KiyoSandboxWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: KiyoSandbox.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.

config :sasl, sasl_error_logger: false
import_config "#{Mix.env}.exs"
