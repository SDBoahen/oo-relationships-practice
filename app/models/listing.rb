class Listing
      attr_accessor :city, :name

      @@all = []
      

      def initialize(city, name)
          @city = city.to_s
          @name = name.to_s

          @@all << self
      end
      def  self.all
           @@all
      end 



      def guests
          related_trip = Trip.all.select{ |trp| trp.listing == self }

          related_trip.map{ |rel| rel.guest }
# ***
      end


      def  trips
           Trip.all.filter{ |trp| trp.listing == self }
      end
      def  trip_count
           trips.count
      end
      def  self.most_popular
           self.all.max_by{ |listg| listg.trip_count }
      end 


      def  self.find_all_by_city(city)
                                 city.to_s
           self.all.filter{ |listg| listg.city == city }  
      end
end 