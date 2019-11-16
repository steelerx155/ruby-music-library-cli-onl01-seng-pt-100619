require 'pry'
class Artist
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = []
    
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
  
end