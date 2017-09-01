# require 'pry'

class Song

  attr_accessor :name, :artist, :genre


  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq!
  end
  def self.genres
    @@genres.uniq!
  end
  def self.genre_count
    g_hash = {}
    @@genres.each do |type_music|
      if g_hash.has_key?(type_music)
        g_hash[type_music] += 1
      else
        g_hash[type_music] = 1
      end
    end
    return g_hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each do |art|
      if a_hash.has_key?(art)
        a_hash[art] += 1
      else
        a_hash[art] = 1
      end
    end
    return a_hash
  end

end
