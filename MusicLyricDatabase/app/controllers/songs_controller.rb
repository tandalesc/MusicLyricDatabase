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