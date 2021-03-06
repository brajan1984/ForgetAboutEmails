defmodule PeriodicTrigger.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    IO.puts("Starting PeriodicTrigger!")

    children = [
      worker(PeriodicTrigger, [])
    ]

    opts = [strategy: :one_for_one, name: PeriodicTrigger.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
