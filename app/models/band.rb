# - Band should have a method Band#concerts should return an array of all that band's concerts
# - Band should have a method Band#venues that returns an array of all the venues the band has concerts in

class Band

  attr_accessor :name
  attr_reader :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.band == self
    end
  end

  def venues
    concerts.map do |concert|
      concert.venue
    end
  end

  
end
