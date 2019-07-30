class Song
  attr_accessor :name 
  attr_reader :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    artist = Artist.new(filename.split(" - ")[0])
    song.artist = artist unless song.artist = artist
    artist.songs << song
    song
  end
  
  def artist_name=(name)
   artist = Artist.all.detect {|artist| artist.name == name}
   
   if artist
     self.artist = artist
   else
     artist = Artist.new(name)
     self.artist = artist
   end
   self.artist.songs << self
  end
end