class MP3Importer
  attr_accessor :path
  def initialize(filePath)
    @path = filePath
  end
  
  def files
   fileArray =[]
   filesArray = Dir.glob("*.jpg")
   filesArray.size
  end
end