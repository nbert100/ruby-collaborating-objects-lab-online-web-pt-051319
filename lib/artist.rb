class Artist 
  attr_accessor :name, :songs

@@all = []


  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name == name} || self.new(name).tap(&:save) #self.all << self.new(name)
  end
  
  def print_songs
    @songs.collect{|song| puts song.name}
  end
end