defmodule Delphi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      DelphiWeb.Telemetry,
      # Start the Ecto repository
      Delphi.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Delphi.PubSub},
      # Start Finch
      {Finch, name: Delphi.Finch},
      # Start the Endpoint (http/https)
      DelphiWeb.Endpoint
      # Start a worker by calling: Delphi.Worker.start_link(arg)
      # {Delphi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Delphi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DelphiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
