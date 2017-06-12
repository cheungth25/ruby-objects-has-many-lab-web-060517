class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  @@song_count = 0

  def initialize(artist_name)
    @name = artist_name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
    self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1
    self
  end

  def self.song_count
    @@song_count
  end
end
