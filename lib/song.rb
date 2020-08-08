class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.create(name)
    song = self.new
    song.name=name
    @@all << song
    @name = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
