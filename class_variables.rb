class Album
    @@album_count = 0
    
    attr_accessor :release_date
  
  def initialize
    @@album_count += 1
  end
  
  def self.count
    @@album_count
  end
end
  
  