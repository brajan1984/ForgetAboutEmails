use Mix.Config

config :your_app, PeriodicTrigger.Scheduler,
  jobs: [
      # Every minute
      {"* * * * *", {PeriodicTrigger.ConsoleWriterAction, :action_do, ["blazej"]}}
    ]
