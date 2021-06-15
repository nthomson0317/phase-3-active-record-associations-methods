class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_songs
    self.songs
  end

  def get_first_song
    get_songs.first
  end

  def get_genre_name
    get_first_song.genre
  end


  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    get_first_song.genre

  end

  def song_count
    #return the number of songs associated with the artist
    get_songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    song_genres = get_songs.map {|song| song.genre}
    song_genres.count
  end
end
