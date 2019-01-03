class Venue
  attr_accessor :title
  attr_reader :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.venue == self
    end
  end

  def bands
    concerts.map do |concert|
      concert.band
    end
  end

  def num_hometown_shows
    # returns number of hometown shows
    concerts.select {|concert| concert.hometown_show? }.length
  end

  def self.most_hometown_shows
    self.all.max_by {|venue| venue.num_hometown_shows }

    # highest_num_venue = self.all.first
    #
    # self.all.each do |venue|
    #   if highest_num_venue.num_hometown_shows < venue.num_hometown_shows
    #     highest_num_venue = venue
    #   end
    # end
    #
    # highest_num_venue

  end
end
