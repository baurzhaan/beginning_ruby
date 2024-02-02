# classes with the same name

module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 100
puts a.length

b = Country::Ruler.new
b.name = 'Atilla'
puts b.name