class Song
  attr_accessor :name
  attr_reader :artist
  
def initialize(name)
  @name = name
  @artist = nil
end 

def artist=(artist)
  @artist = artist
  artist.add_song(self)
end 

def self.new_from_filename(filename)

end 

end 