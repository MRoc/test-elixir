defmodule GuardClauseModule do
  def function(parameter) when parameter == 0, do: "parameter is 0"
  def function(parameter) when is_integer(parameter), do: "parameter is a number #{parameter}"
  def function(parameter) when is_atom(parameter), do: "parameter is an atom #{parameter}"
  def function(parameter), do: "parameter is #{parameter}"
end

IO.puts GuardClauseModule.function(0)
IO.puts GuardClauseModule.function(2)
IO.puts GuardClauseModule.function(:x)
IO.puts GuardClauseModule.function("x")
