defmodule DefaultValuesModule do
  def function(greeting \\"Hello", name) do
    "#{greeting} #{name}"
  end
end

IO.puts DefaultValuesModule.function("Dood")
IO.puts DefaultValuesModule.function("Hi", "Dood")
