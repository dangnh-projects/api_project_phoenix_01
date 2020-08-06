# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_project_01,
  ecto_repos: [ApiProject01.Repo]

# Configures the endpoint
config :api_project_01, ApiProject01Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dYrg8wYUqV+VY789EpGsEBhykKymOs/JH1Cn0ZE/QtdsIl+NCtPD0bckvpUFdd66",
  render_errors: [view: ApiProject01Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ApiProject01.PubSub,
  live_view: [signing_salt: "cV8nqWie"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

config :phoenix, :format_encoders, "json-api": Poison

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
