class Artist 
  attr_accessor :name, :songs
  
  @@songs = []
  
  
  def initialize(name)
    @name = name 

  end
  
  def songs 
    @@songs 
  end 
  
  def add_song(song)
    @@songs << song
    song.artist = self
  end 
  
  def add_song_by_name(song)
    new_song = Song.new(song)
    @@songs << new_song 
    new_song.artist = self
  end
  
  def self.song_count 
    @@songs.count 
  end 
  
  def artist_name 
    if @artist == nil 
      return nil 
    else 
      @artist.name
    end 
    
  end 
end 