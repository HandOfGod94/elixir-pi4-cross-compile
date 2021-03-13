defmodule HelloWorld.Application do
  require Logger
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: HelloWorld.Worker.start_link(arg)
      # {HelloWorld.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloWorld.Supervisor]

    Logger.info("Hello World")
    Supervisor.start_link(children, opts)
  end
end
