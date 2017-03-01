class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end
  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Vehicle
  attr_reader :make
  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end
  def honk_horn
    puts "Beeeeeeep!"
  end
end

car = Car.new(fuel: "gas", make: "Ford", model: "F-150")
car.honk_horn
p car.make
