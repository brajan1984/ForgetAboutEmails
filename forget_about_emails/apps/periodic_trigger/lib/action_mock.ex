defmodule PeriodicTrigger.ActionMock do
  @doc ~S"""
  Prints out hello #{args} to console

  ##Examples
  iex> PeriodicTrigger.ActionMock.action_do(5)
  {:ok, 6}
  """
  def action_do(args) do
    args++
    {:ok, args}
  end
end
