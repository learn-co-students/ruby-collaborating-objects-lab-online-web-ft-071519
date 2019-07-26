class MP3Importer
  attr_accessor :path
  def initialize(filePath)
    @path = filePath
  end
  
  def files
   fileArray =[]
    Dir[@path].each do|file|  
    fileArray << file if file.include?(".mp3")
    binding.pry
    end
    
    fileArray.size
  end
end