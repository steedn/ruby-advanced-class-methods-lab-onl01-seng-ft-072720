require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(v = nil)
    @name = v
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
    song = self.new(name)
    song
  end

  def self.create_by_name(name)
    song = self.new(name)
    @@all << song
    song

end
