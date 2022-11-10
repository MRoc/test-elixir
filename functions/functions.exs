defmodule FunctionModule do
  defmodule SubModule do
  end

  # Multi line function
  def multi_line(name) do
    _hello_impl("Hello", name)
  end
  # Multiple clauses
  def multi_line(greet, name) do
    _hello_impl(greet, name)
  end

  # Single line function
  def single_line, do: multi_line("Hacker")

  # Private function
  defp _hello_impl(greeting, name) do
    "#{greeting} #{name}"
  end
end
IO.puts FunctionModule
IO.puts FunctionModule.SubModule
IO.inspect FunctionModule.multi_line("Hacker")
IO.inspect FunctionModule.multi_line("Yo", "Hacker")
IO.inspect FunctionModule.single_line
