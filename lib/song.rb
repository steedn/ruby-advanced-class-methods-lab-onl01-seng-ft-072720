class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.create
    self.new
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
