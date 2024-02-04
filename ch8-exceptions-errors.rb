class Person
  def initialize(name)
    raise ArgumentError, 'No name present' if name.empty?
  end
end

# person = Person.new('')

begin
  puts 10/0
rescue => e
  puts "You have raised an error -> #{e.class}"
end