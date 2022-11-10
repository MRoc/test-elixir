inc = fn x -> x + 1 end
IO.inspect inc
IO.inspect inc.(2)

inc = &(&1 + 1)
IO.inspect inc
IO.inspect inc.(2)

list = &[&1, &2]
IO.inspect list
IO.inspect list.(1, 2)

tuple = &{&1, &2}
IO.inspect tuple
IO.inspect tuple.(1, 2)

IO.inspect &String.upcase/1
IO.inspect &String.upcase(&1)
