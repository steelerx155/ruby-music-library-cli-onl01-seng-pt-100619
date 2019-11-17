require 'pry'
class Artist
  attr_accessor :name, :songs, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = []
    @songs  = []
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
  
  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end
 
 
  def genres
    songs.collect{ |s| s.genre }.uniq
  end
  
end



