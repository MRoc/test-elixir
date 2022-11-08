# Anonymous function
hello0 = fn (p) -> "Hello #{p}" end
IO.puts hello0.("Elixir")

hello1 = fn p -> "Hello #{p}" end
IO.puts hello1.("Elixir")

hello2 = fn -> "Hello Elixir" end
IO.puts hello2.()

IO.puts "is_function fn -> 123 end: #{is_function fn -> 123 end}"

# Pattern matching
IO.puts "x = 3"
x = 3
IO.puts "y = 2"
y = 2
IO.puts "^x = y + 1   :#{^x = y + 1}"

bingo = fn
  (88) -> "Bingo!"
  (_) -> "no win"
end
IO.puts bingo.(9)
IO.puts bingo.(88)

# Pipe operator
IO.write "[1, 2] |> Enum.map(&(\"H: \#\{&1\}\")): "
IO.inspect [1, 2] |> Enum.map(&("H: #{&1}"))

defmodule Helper do
  def execute(lines) do
    Enum.map lines, fn (code) ->
      {result, _} = Code.eval_string code
      "#{code}:\n#{inspect(result)}\n\n"
    end
  end
  def concat(lines) do
    Enum.reduce(lines, "", fn (x, acc) -> "#{acc}#{x}" end)
  end
end

{:ok, contents} = File.read("./test.exs")
lines = Helper.execute(contents |> String.split("\n", trim: true))
IO.puts Helper.concat(lines)
