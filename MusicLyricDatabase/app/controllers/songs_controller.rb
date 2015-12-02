class SongsController < ApplicationController
	def show
		query = "SELECT * FROM songs WHERE id="+params[:id]
		song = Song.find_by_sql(query)
		@song = song[0]
		query = "SELECT * FROM albums WHERE id=#{@song.album_id}"
		album = Album.find_by_sql(query)
		@album = album[0]
		query = "SELECT * FROM artists WHERE id=#{@album.artist_id}"
		artist = Artist.find_by_sql(query)
		@artist = artist[0]
		query = "SELECT * FROM producers INNER JOIN producers_songs ON producers.id = producers_songs.producer_id WHERE producers_songs.song_id=#{@song.id}"
		@producers = Producer.find_by_sql(query)
	end
	def add
		if logged_in?
			query = "SELECT * FROM songs WHERE id="+params[:id]
			song = Song.find_by_sql(query)
			@song = song[0]
			query = "SELECT * FROM playlists WHERE user_id=#{current_user.id}"
			@playlists = Playlist.find_by_sql(query)
		end
	end
end