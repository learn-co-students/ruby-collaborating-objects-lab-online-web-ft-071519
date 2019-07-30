class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

   def self.all
     @@all
   end

   def add_song(song)
     song.artist = self
   end

   def songs
     Song.all.select {|song| song.artist == self}
   end

   def self.find_or_create_by_name(name)
     self.all.find {|artist| artist.name == name} ? self.all.find {|artist| artist.name == name} : self.new(name)


     
   end


   def print_songs
     Song.all.each do |song|
       puts "#{song.name}" unless song.artist != self
     end
   end

end
