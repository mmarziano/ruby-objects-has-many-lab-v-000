class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name 
    @artist = artist
    @@all << self  
  end 
  
  def artist 
    @artist 
  end 
  
  def artist_name 
    if @artist == nil 
      return nil 
    else 
      @artist.name
    end 
    
  end 
end 