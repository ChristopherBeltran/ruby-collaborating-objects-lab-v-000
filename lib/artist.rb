class Artist 
  attr_accessor :name
  attr_reader :songs 
  
  @@all = []
 
  
def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs.push(song)
  
end 

def self.all
  @@all
end 

def save
  @@all.push(self)
  self
end 

def self.find_or_create_by_name(name)
    if @@all.detect { |artist| artist.name == name}
      name
    else 
      self.new(name).save
    end 
  end 
  
def print_songs
  @songs.each do { |s| puts s.name}
end 
