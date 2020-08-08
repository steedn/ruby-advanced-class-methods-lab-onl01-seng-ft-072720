require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
  end

  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    # binding.pry
    song.name = name
  end

end
