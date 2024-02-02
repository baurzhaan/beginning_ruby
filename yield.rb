def one_yield
  yield
end

def multiple_yields
  yield
  yield
  yield
end

one_yield { puts 'I am a code block 1' }

multiple_yields { puts 'I am a code block 2' }

# yields with arguments

def yield_with_arguments
  word1 = 'Hello'
  word2 = 'World!'
  yield(word1, word2)
end

yield_with_arguments { |arg1, arg2| puts "#{arg1} #{arg2}" }

# one_yield -> would produce error that there is no code block given as a parameter
# the solution to above error is:

def two_yields
  if block_given?
    yield
    yield
  end
  raise 'No block given!!!'
end

two_yields { puts 'I am a code block given' }
two_yields