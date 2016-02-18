# debugging

# Car has two attributes, brand and model
class Car
  attr_accessor :brand, :model

  def initialize(new_car)
    self.brand = new_car.split(' ').first
    self.model = new_car.split(' ').last
  end
end

betty = Car.new('Ford Mustang')
betty.model.start_with?('M')
