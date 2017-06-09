defmodule ConsoleWriter do
  @doc ~S"""
  Prints out hello #{args} to console

  ##Examples
  iex> ConsoleWriter.do_action("your name")
  "hello your name"
  :ok
  """
  def do_action(args) do
    IO.puts("hello #{args}")
  end
end
