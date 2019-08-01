class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
      @name = name 
     # @songs = []
      @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
    @@all << self
  end 
  
  def self.find_or_create_by_name(name)
    all.detect do |artist| 
    artist.name == name 
    end || new(name) 
  end 
  
  def songs
    Song.all.select { |song| song.artist == self }
  end 
  
  def print_songs
    songs.each do |song|
      puts song.name
    end 
  end 
  
end 