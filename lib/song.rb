require 'pry'

class Song 
  attr_accessor :name, :artist
 # attr_reader :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
=begin
  def artist=(artist)
    artist.songs << self
    @artist = artist 
  end 
=end
  
  def self.new_by_filename(filename)
    song = new(filename.split(' - ')[1])
    artist = Artist.new(filename.split(' - ')[0])
    song.artist = artist 
    artist.songs << song
    song
  end 
  
  def self.all
    @@all 
  end 
    
  def artist_name=(name)
    artist = Artist.all.detect { |artist| artist.name == name }
    if artist
      self.artist = artist
    else 
     artist = Artist.new(name)
     self.artist = artist
    end
     self.artist.songs << self
  end 
  
  
end 
