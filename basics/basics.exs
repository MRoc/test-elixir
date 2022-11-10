defmodule Program do
  def main do
    {:ok, contents} = File.read("./test.exs")
    lines = contents |> String.split("\n", trim: true)
    lines = Program.execute(lines)
    IO.puts Program.concat(lines)
  end
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

Program.main()
