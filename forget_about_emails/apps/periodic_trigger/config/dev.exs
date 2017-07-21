use Mix.Config

config :your_app, PeriodicTrigger,
  jobs: [
      # Every minute
      {"* * * * *", {PeriodicTrigger.ConsoleWriterAction, :action_do, ["blazej"]}}
    ]
