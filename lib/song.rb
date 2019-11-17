require 'pry'
class Song 
  attr_accessor :name, :songs, :artist 
  attr_reader :artist
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name 
    @songs = []
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
   
  
  
end