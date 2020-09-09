require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#puts "bind?"


#### Listing
apart = Listing.new("The Bronx", "Tati's Crib")
hooka = Listing.new("The Bronx", "The Hookah House")

house = Listing.new("Miami", "Beach House")

room  = Listing.new("Yonkers", "Available Room")
#### initialize(city, name)


#### Guests
baabaa = Guest.new("BaaBaa B")
booboo = Guest.new("BooBoo B")

bobby  = Guest.new("Bobby O")

julio  = Guest.new("Julio J")
# julio2 = Guest.new("Julio J") #hasn't gone anywhere

wilma  = Guest.new("Wilma Q")



#### initialize(name)


#### Trip
trip_a1 = Trip.new(apart, julio)
trip_a2 = Trip.new(apart, bobby)

trip_h1 = Trip.new(house, wilma)


trip_r1 = Trip.new(room, bobby)

trip_r2 = Trip.new(room, booboo)
trip_r3 = Trip.new(room, baabaa)
#### initialze(listing, guest)









binding.pry
0