class Song
attr_accessor :name, :artist
@@all =  []
def initialize(name, artist = nil)
  @name = name
  @artist = artist
  @@all << self
end
def all
  @@all
end

def self.all
  @@all
end
end

def artist_name
if self.artist
  self.artist.name
else
  nil
end
end

def self.find(name)     #class method detects instances from @@all class variable
   self.all.detect { |artist| artist.name == name }
 end

 def self.create(name)   #class method creates & stores instances vs initializing
   artist = Artist.new(name)
   artist.save
   artist
 end

 def print_songs #instance method iterates through @songs of an instance of Artist
   self.songs.each {|song| song.name}
 end
 end