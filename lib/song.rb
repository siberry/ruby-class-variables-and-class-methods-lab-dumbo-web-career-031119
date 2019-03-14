class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    genres.each { |genre|
      count = @@genres.count(genre)
      genre_count[genre] = count }
    genre_count
  end
    
  def self.artist_count
    artist_count = {}
    artists.each { |artist|
      count = @@artists.count(artist)
      artist_count[artist] = count }
    artist_count
  end

  
end