class Song
  attr_accessor :name, :artist
  def initialize(song_name)
    @name = song_name
  end

  def artist_name
    return nil if !@artist
    @artist.name
  end
end
