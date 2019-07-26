require 'pry'

class Song
  


  attr_accessor :name, :artist
  def initialize(name)
    @name = name
 
  end
  

  
  def self.new_by_filename(title)
   artist = Artist.new(title.split(" - ")[0])
  
    song = Song.new(title.split(" - ")[1])
    song.artist = artist
  artist.add_song(song)

return song
end

end