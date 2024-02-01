# Ruby 3 , right assignment
puts "\n=== Right assignment ==="
'John Snow' => name
puts name

[1,2,3,4,3,2,] => arr1
p arr1

# multiline text
puts "\n=== Multiline text ==="
puts %q{This is a test
of multi line
capabilities}

# character and ord
puts "\n=== character and ord ==="
puts 's'.ord
puts 115.chr

# regular expressions and string manipulation
puts "\n=== regular expressions and string manipulation ==="
x = "This is test"
puts x.sub(/^../, 'Hello')
puts x.sub(/..$/, 'Hello')

# regular expression: every letter
puts "\n=== regular expression: every letter ==="
'xyz'.scan(/./) { |letter| puts letter }

# regular expression: every two letter
puts "\n=== regular expression: every two letter ==="
'This is a test'.scan(/../) { |two_letter| puts two_letter }

# regular expression: every two alpha-numeric character
puts "\n=== regular expression: every two alpha-numeric character ==="
'This is a test'.scan(/\w\w/) { |two_alpha_num| puts two_alpha_num }

# regular expression: every digit
puts "\n=== regular expression: every digital ==="
'This is 10 a test 1000'.scan(/\d+/) { |digital| puts digital }

# regular expression: every single digit
puts "\n=== regular expression: every single digit ==="
'This is 10 a test 1000'.scan(/\d/) { |single_digit| puts single_digit}

# regular expression, matching
puts "\n=== regular expression, matching ==="
puts 'String has vowels' if 'This is test'.match(/[aeiou]/)