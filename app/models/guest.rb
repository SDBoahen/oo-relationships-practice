class Guest
      attr_accessor :name 
    
      @@all = []

      
      def initialize(name)
          @name = name.to_s

          @@all << self
      end
      def  self.all
           @@all
      end 



      def  trips
           Trip.all.filter{ |trip_instc| trip_instc.guest == self }
      end
      def  listings
           trips.collect{ |trip_instc| trip_instc.listing }
      end
      def  trip_count
           trips.count
      end
      def  self.pro_traveller
           self.all.select{ |gst| #puts "#{gst.name} : #{gst.trip_count} "
          
           gst.trip_count > 1 
        
        }
      end


      def  self.find_all_by_name(name)
           self.all.select{ |gst| gst.name == name }
      end


end