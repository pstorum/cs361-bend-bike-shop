!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

bike = Bike.new(1, :pink, 99.99, Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, items, self))

rental = Rental.new(bike)

puts "Bob Loblaw, owner of Bend Bike Shop, says, \"Price should now be the base price of the bike,
plus $2 times its weight, plus $2 times the weight of any luggage."
puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

