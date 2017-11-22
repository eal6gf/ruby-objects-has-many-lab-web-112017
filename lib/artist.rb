
class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    increment_songs_total(song)
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    increment_songs_total(new_song)
    new_song
  end

  def self.song_count
    @@song_count
  end


  private
  def increment_songs_total(song)
    @songs << song
    @@song_count +=1
  end

end
