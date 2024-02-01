class Square
  @@objects_count = 0 #class variable

  def initialize(side_length)
    @side_length = side_length #object/instance variable
    
    if defined?(@@objects_count) 
      @@objects_count += 1 
    else
      @@objects_count = 1
    end
  end
  
  $global_variable = 1000 #global variable

  def area
    @side_length * @side_length
  end

  def self.count
    @@objects_count
  end
end

#

a = Square.new(10)
puts a.area
puts Square.count

b = Square.new(5)
puts b.area
puts Square.count

puts $global_variable