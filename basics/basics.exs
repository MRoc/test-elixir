# Basics
IO.puts("Hello World")
IO.puts "Hello World"
IO.puts String.downcase "HELLO"
IO.puts "123: #{123}"
IO.puts "1 + 3: #{1 + 3}"
IO.puts "1 / 3: #{1 / 3}"
IO.puts "div(1, 3): #{div(1, 3)}"
IO.puts "rem(1, 3): #{rem(1, 3)}"
IO.puts "1_000_000: #{1_000_000}"
IO.puts "123.456: #{123.456}"
IO.puts "0o4444: #{0o4444}"
IO.puts "0xabcd: #{0xabcd}"
IO.puts "0b0101: #{0b0101}"
IO.puts "Float.round(123.456): #{Float.round(123.456)}"

# Atoms (Similar to ruby symbols)
IO.puts ":hello === :\"hello\": #{:hello === :"hello"}"

# Boolean (Are actually just atoms)
IO.puts "true === false: #{true === false}"
IO.puts "true === true: #{true === true}"
IO.puts "true === :true: #{true === :true}"

# String
IO.puts "is_list \"hello\": #{is_list "hello"}"
IO.puts "is_binary \"hello\": #{is_binary "hello"}"
IO.puts "is_function \"Ö\": #{is_function "hello"}"
IO.puts "byte_size \"h\": #{byte_size "h"}"
IO.puts "byte_size \"Ö\": #{byte_size "Ö"}"
IO.puts "String.length \"Ö\": #{String.length "Ö"}"

# Character sequence
IO.puts "is_list \'hello\': #{is_list 'hello'}"
IO.puts "is_binary \'hello\': #{is_binary 'hello'}"
IO.puts "is_function \'hello\': #{is_function 'hello'}"

# Anonymous function
hello0 = fn (p) -> "Hello #{p}" end
IO.puts hello0.("Elixir")

hello1 = fn p -> "Hello #{p}" end
IO.puts hello1.("Elixir")

hello2 = fn -> "Hello Elixir" end
IO.puts hello2.()

IO.puts "is_function fn -> 123 end: #{is_function fn -> 123 end}"

# Typle (immutable indexed array)
t0 = { 1, 2, 3 }
IO.puts elem(t0, 0)
IO.puts elem(t0, 1)
IO.puts elem(t0, 2)
IO.puts "tuple_size t0: #{tuple_size t0}"

# List
list = [1, 2, 3]
IO.write "hd list: "
IO.inspect hd list
IO.write "tl list: "
IO.inspect tl list
IO.write "Enum.at(list, 2): "
IO.inspect Enum.at(list, 2)
IO.write "Enum.max_by(list, fn p -> p end): "
IO.inspect Enum.max_by(list, fn p -> p end)

IO.write "Prepend list: "
list = [0 | list]
IO.inspect list

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

# {1, 2} = {1, 2}
# {1, 2} = {1, 2, 3}
# {1, 2} = [1, 2]
# {1, a} = {1, 2}
# {a, b} = {1, 2}

IO.puts "Destructuring tuple:"
{a, b} = {1, 2}
IO.puts a
IO.puts b

IO.puts "Destructuring array:"
list = [1, 2, 3]
[a | b] = list
IO.inspect a
IO.inspect b

# Read file
{status, fid} = File.open("./test.txt")
IO.puts status
IO.puts IO.read fid, :line
File.close fid
