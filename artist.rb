class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song unless songs.include?(song)
    song.artist = self unless song.artist == self
  end
  
  def songs
    @songs
  end
  
  def save
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def delete_all
    @@all.clear
  end
  
end