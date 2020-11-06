require "pry"
class Song
    attr_accessor :name, :artist, :genre 
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    @@count = 0
    def self.count
        @@count
    end

    @@artists = []
    def self.artists
        @@artists.uniq!
    end

    @@genres = []
    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre] #if key has been counted then adds to value
               genre_count[genre] += 1
            else
                genre_count[genre] = 1 #if key is new then creats new key and adds value

            end
        end
        genre_count
    
        #returns a hash that contains the genre and the number of songs that the genre has, iterate over the @@genres and add k/v to hash each or map?
        #each returns an array of original unmodified values map can change values and pass them as the new array
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
             artist_count[artist] += 1
            else
             artist_count[artist] = 1
            end
        end
        artist_count
    end
end

