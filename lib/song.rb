class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.tally
  end

  def self.artist_count
    artist_hash ={}
    @@artists.map do |artist|
      (artist_hash.has_key?(artist)) ? 
        artist_hash[artist] += 1 :
        artist_hash[artist] = 1 
    end
    artist_hash
  end
end

s1 = Song.new("99 Problems", "Jay-Z", "rap")
s2 = Song.new("Brotherhood of Man", "Robert Morse", "broadway")
s2 = Song.new("I Believe in You", "Robert Morse", "broadway")
puts s1.name
puts s1.genre
puts Song.count
p Song.genres
p Song.artists
p Song.genre_count
p Song.artist_count