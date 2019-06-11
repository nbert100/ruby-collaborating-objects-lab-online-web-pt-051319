require 'pry'
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{path}/*.mp3").collect do |file_name| file_name.split("/").pop
    end
  end
  
  def import 
    files.each {|filename| Song.new_by_filename(filename)}
  end
  

end