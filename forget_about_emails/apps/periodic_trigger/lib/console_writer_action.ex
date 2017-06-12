defmodule PeriodicTrigger.ConsoleWriterAction do
  @doc ~S"""
  Prints out hello #{args} to console

  ##Examples
  iex> PeriodicTrigger.ConsoleWriterAction.action_do("your name")
  "hello your name"
  :ok
  """
  def action_do(args) do
    IO.puts("hello #{args}")
  end
end
