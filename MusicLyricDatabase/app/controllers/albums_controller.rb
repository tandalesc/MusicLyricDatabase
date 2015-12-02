class AlbumsController < ApplicationController
	def show
		query = "SELECT * FROM albums WHERE id="+params[:id]
		album = Album.find_by_sql(query)
		@album = album[0]
		query = "SELECT * FROM songs WHERE album_id=#{@album.id}"
		@songs = Song.find_by_sql(query)
		query = "SELECT * FROM artists WHERE id=#{@album.artist_id}"
		artist = Artist.find_by_sql(query)
		@artist = artist[0]
	end
end