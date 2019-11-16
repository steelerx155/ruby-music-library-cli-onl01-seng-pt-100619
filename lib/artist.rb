require 'pry'
class Artist
  attr_accessor :name, :artist, :songs
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
  artist = Artist.new(name)
  artist.save
  artist
  end
  
  def add_song
    song.artist.self.
end