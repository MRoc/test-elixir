# Basics
"Hello World"
String.downcase "HELLO"
123
1 + 3
1 / 3
div(1, 3)
rem(1, 3)
1_000_000
123.456
0o4444
0xabcd
0b0101
Float.round(123.456)

# Atoms (Similar to ruby symbols)
:hello === :"hello"

# Boolean (Are actually just atoms)
true === false
true === true
true === :true

# String
is_list "hello"
is_binary "hello"
is_function "hello"
byte_size "h"
byte_size "Ö"
String.length "Ö"

# Character sequence
is_list 'hello'
is_binary 'hello'
is_function 'hello'

# Tuple (immutable indexed array)
elem({ 1, 2, 3 }, 0)
elem({ 1, 2, 3 }, 1)
elem({ 1, 2, 3 }, 2)
tuple_size { 1, 2, 3 }

# List
hd [1, 2, 3]
tl [1, 2, 3]
Enum.at([1, 2, 3], 2)
Enum.max_by([1, 2, 3], fn p -> p end)
List.first [1, "two", :three]
[1 | [2, 3]]
[1 | [2 | [3]]]
length [1, 2, 3]

# Keyword list (orderd, slow to look-up as underlying list)
[{:a, 1}, {:b, 2}]
[a: 1, b: 2]
Keyword.get([a: 1, b: 2], :b)

# Map (no order, fast to look-up)
%{:a => 1, :b => 2}
%{a: 1, b: 2}
%{"a" => 1, "b" => 2}
Map.keys %{:a => 1, :b => 2}
%{:a => 1}[:a]
%{:a => 1}[:z]
%{:a => 1}.a
%{} = %{a: 1, b: 2}
%{b: 2} = %{a: 1, b: 2}
Map.get(%{:a => 1}, :a)

# Destruction / pattern matching
{a, b} = {1, 2}
[a | b] = [1, 2, 3]

# If-statement (with keyword list)
if(true, [do: :this, else: :that])
if true, do: :this, else: :that

# Pipe operator
[1, 2] |> Enum.map(&("H: #{&1}"))
