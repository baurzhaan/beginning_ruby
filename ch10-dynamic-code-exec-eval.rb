# The eval method simply executes (or evaluates) the code passed to it and returns the result. The first example made eval execute puts 2 + 2, whereas the second used string interpolation to build an expression of 15 * 2, which was then evaluated and printed to the screen using puts.

eval "2 + 2"
puts eval("2 + 2")

my_number = 12
my_code = %{#{my_number} * 2}
puts eval(my_code) # eval 