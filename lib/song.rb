class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  
  def new_by_filename(title)
    song = Song.new(title)
    song.name = title
  end
end