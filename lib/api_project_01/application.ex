defmodule ApiProject01.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ApiProject01.Repo,
      # Start the Telemetry supervisor
      ApiProject01Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ApiProject01.PubSub},
      # Start the Endpoint (http/https)
      ApiProject01Web.Endpoint
      # Start a worker by calling: ApiProject01.Worker.start_link(arg)
      # {ApiProject01.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApiProject01.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ApiProject01Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
