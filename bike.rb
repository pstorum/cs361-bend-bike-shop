# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = BikeCargo.new()
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    self.cargo.add_cargo(item)
  end

  def remove_cargo(item)
    self.cargo.remove_cargo(item)
  end

  def pannier_capacity
    self.cargo.pannier_capacity
  end

  def pannier_remaining_capacity
    self.cargo.pannier_remaining_capacity
  end

end

class BikeCargo

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize()
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end