require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(filePath)
    @path = filePath
  end
  
  def files
   fileArray =[]
    fileNameArray = []
    Dir[@path + "/*"].each do|file| 
    fileArray << file if file.end_with?(".mp3")
    end
   
    fileArray.each do|file|
    fileNameArray << file.split("/").last
    
    end
    fileNameArray
  end
  
  def import
    filenames = files
 
    filenames.each do|file|
      
      song= Song.new_by_filename(file)
    end
  end 
end