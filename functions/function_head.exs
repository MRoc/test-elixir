defmodule FunctionHeadModule do
  def function(greeting \\"Hello", name \\"Dood")
  def function(greeting, name), do: "#{greeting} #{name}"
end

IO.puts FunctionHeadModule.function()
IO.puts FunctionHeadModule.function("Dood")
IO.puts FunctionHeadModule.function("Hi", "Dood")
