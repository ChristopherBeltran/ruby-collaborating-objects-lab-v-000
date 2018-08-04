class MP3Importer 
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir.entries(path).reject{|f| f == '.' || f == 
  end 
  
  def import
  end 
  
end 