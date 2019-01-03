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

  def play_in_venue(date, venue)
    Concert.new(date, band, venue)
  end

  def self.all_introductions
    self.all.map {|band| "Hello, we are #{band.name} and we're from #{band.hometown}"}
  end


end
