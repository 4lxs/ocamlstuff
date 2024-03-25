let rec fib x = if x <= 1 then 1 else fib (x - 1) + fib (x - 2);;

#trace fib;;

print_int (fib 5)
