require 'pry'
class Song
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
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
  song = Song.new(name)
  song.save
  song
  end
  
end