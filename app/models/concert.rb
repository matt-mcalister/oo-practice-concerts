# Concert should initialize with a date, band, and venue
# - Concert should have a Concert.all method which returns all the instances of Concert
# - Concert should have methods Concert#band and Concert#venue that return the band and venue associated to the Concert

class Concert

  attr_accessor :date, :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  def hometown_show?
    band.hometown == venue.city
  end

end
