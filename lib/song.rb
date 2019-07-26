class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(title)
   
    song = Song.new(title.split(" - ")[1])
    song.name = title.split(" - ")[1]
  end
end