class Song 
    @name = ''
    @artist = ''
    @genre = ''
    @@count = 0
    @@artist_count = 0
    @@genre_count = 0
    @@artists = []
    @@genres = []

    def initialize(songTitle, artist, genre)
        @name = songTitle
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@artists = @@artists.append(artist)
        @@genres = @@genres.append(genre)
    end
    def name
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end