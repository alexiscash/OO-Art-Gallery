require_relative '../config/environment.rb'

leo = Artist.new('Leonardo DaVinci', 69)
van = Artist.new('Vincent Van Gogh', 37)

louvre = Gallery.new('le louvre', 'france')
met = Gallery.new('da met', 'new york')


p1 = Painting.new('moana lisa', 100000000000000000000000000, leo, louvre)
p2 = Painting.new('scream', 102349671298364, van, louvre)
p3 = Painting.new('dog poker', 2435708, van, louvre)



binding.pry

puts "Bob Ross rules."
