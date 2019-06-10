require 'pry'

class Song 
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
    @artist = artist
  end
  
  # def artist=(artist_name)
  #   artist_name = self.artist
  # end
  
  def self.new_by_filename(filename)
  
    song_info = filename.split(" - ")
    # Artist.name = song_info[0]
    song_new = self.new(song_info[1])
    self.artist.name = song_info[0]
    
    end
  
end

