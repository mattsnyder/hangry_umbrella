defmodule Hangry.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: Hangry.PubSub}
      # Start a worker by calling: Hangry.Worker.start_link(arg)
      # {Hangry.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Hangry.Supervisor)
  end
end
