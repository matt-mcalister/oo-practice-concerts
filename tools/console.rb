require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

matts_basement = Venue.new("matts basement", "brooklyn")
glorias_basement = Venue.new("gloria's glorious basement", "ohio")


rhus_band = Band.new("oh man", "brooklyn")
the_kevy_wevys = Band.new("the kevy wevys", "ohio")


rhus_basement_gig = Concert.new("12/31/2018", rhus_band, matts_basement)
rhus_basement_gig = Concert.new("1/2/1989", rhus_band, matts_basement)
kevins_only_concert = Concert.new("12/31/2018", the_kevy_wevys, glorias_basement)
rhus_glorious_gig = Concert.new("1/1/2019", rhus_band, glorias_basement)

binding.pry
puts "goodbye"
