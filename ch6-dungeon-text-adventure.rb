=begin
Dungeon: You need a general class that encapsulates the entire concept of the dungeon game.

Player: The player provides the link between the dungeon and you. All experience of the dungeon comes through the player. The player can move between rooms in the dungeon.

Rooms: The rooms of the dungeon are the locations that the player can navigate between. These will be linked together in multiple ways (e.g., doors to the north, west, east, and south) and have descriptions.
=end

require 'pry'

class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms[reference]
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

  def go(direction)
    puts 'You go ' + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end
end

class Player
  attr_accessor :name, :location
  def initialize(name)
    @name = name
  end
end

class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections)
    @reference = reference
    @name = name
    @description = description
    @connections = connections
  end

  def full_description
    @name + "\nYou are in " + @description
  end
end

player = Player.new('Fred Bloggs')
my_dungeon = Dungeon.new(player)

# Add room to the dungeon
my_dungeon.add_room(:largecave, 'Large Cave', 'a large cavernous cave', { west: :smallcave })
my_dungeon.add_room(:smallcave, 'Small Cave', 'a small, claustrophobic cave', { east: :largecave })

# Start the dungeon by placing the player in the large cave
my_dungeon.start(:largecave)

my_dungeon.show_current_description
my_dungeon.go(:west)

my_dungeon.go(:east)