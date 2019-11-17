require 'pry'
class Song 
  attr_accessor :name, :songs, :artist, :genre
  attr_reader :artist
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    @songs = []
    self.artist = artist if artist
    self.genre = genre if genre 
  end
  
  
  def artist=(artist)
    @artist = artist
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
    song = Song.new(name)
    song.save
    song
  end
   
  def artist=(artist)
    @artist = artist 
    # binding.pry
    @artist.add_song(self) 
  end
  
  def genre=(genre)
    @genre =  genre
    genre.songs << self unless genre.songs.include?(self)
  end
  
  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
  
  def self.find_or_create_by_name(name)
    find_by_name(name) || create(name)
  end
end  