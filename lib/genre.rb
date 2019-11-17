require 'pry'
class Genre
  
  extend Concerns::Findable
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = []
    @songs = []
  end
  
  def self.all
    @@all 
  end
  
  def self.destroy_all
   @@all = [] 
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
  genre = Genre.new(name)
  genre.save
  genre
  end
  
  def songs
  @songs
  end
  
  def artists
    # binding.pry
    songs.collect { |s| s.artist }.uniq
  end
end