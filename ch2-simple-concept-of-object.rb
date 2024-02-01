class Person
  attr_accessor :name, :age, :gender
end

person1 = Person.new
person2 = Person.new

p person1
p person2

person1.name = 'Tom'
person1.age = 100
person1.gender = 'male'
p person1

class Pet
  attr_accessor :name, :age, :gender, :age
  
  def speak
  end
end

class Cat < Pet
  def speak
    puts 'Meow!'
  end
end

class Dog < Pet
  def speak
    puts 'Woof!'
  end
end

class Snake < Pet
  attr_accessor :length
end

snake = Snake.new
snake.name = 'Lizzy'
snake.age = 12
snake.length = 400
snake.speak
p snake

lassie = Dog.new
lassie.name = 'Lassie'
lassie.age = 10
lassie.speak
p lassie