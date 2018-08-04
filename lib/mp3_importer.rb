class MP3Importer 
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir.entries(path).reject{|f| f == '.' || f == '..'}
  end 
  
  def import
    self.files.each do |f| 
      song = Song.new_by_filename(f)
      Artist.all << 
    end 
  end 
  
end 