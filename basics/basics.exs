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
IO.puts "byte_size \"h\": #{byte_size "h"}"
IO.puts "byte_size \"Ö\": #{byte_size "Ö"}"
IO.puts "String.length \"Ö\": #{String.length "Ö"}"

# Character sequence
IO.puts "is_list \'hello\': #{is_list 'hello'}"
IO.puts "is_binary \'hello\': #{is_binary 'hello'}"

# Anonymous function
hello0 = fn (p) -> "Hello #{p}" end
IO.puts hello0.("Elixir")

hello1 = fn p -> "Hello #{p}" end
IO.puts hello1.("Elixir")

hello2 = fn -> "Hello Elixir" end
IO.puts hello2.()
