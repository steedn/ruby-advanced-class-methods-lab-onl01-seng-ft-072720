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

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == true
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.sort!
  end

  def self.new_from_filename(filename)
    # binding.pry
    filename.split(" - ")
    filename.split(".")
    filename.pop
    artist = self.artist_name(filename[0])
    song = self.name(filename[-1])
    # binding.pry
  end

  def self.destroy_all
    @@all.clear
  end

end
