# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :codegen_test,
  ecto_repos: [CodegenTest.Repo]

# Configures the endpoint
config :codegen_test, CodegenTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H6weUNAzXrsumkKDH9ttD8s7jzBHBe+RKE7tUWhLjlER2G7vMliZaWra2QzAE2ux",
  render_errors: [view: CodegenTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CodegenTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
#config :ecto, :json_library, Jason

config :mw_codegen, :config_file, "codegen.json"


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
