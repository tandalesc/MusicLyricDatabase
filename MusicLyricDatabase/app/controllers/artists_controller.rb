class ArtistsController < ApplicationController
	def show
		query = "SELECT * FROM artists WHERE id="+params[:id]
		artist = Artist.find_by_sql(query)
		@artist = artist[0]
		query = "SELECT * FROM regions WHERE id=#{@artist.region_id}"
		region = Region.find_by_sql(query)
		@region = region[0]
		query = "SELECT * FROM genres WHERE id=#{@artist.genre_id}"
		genre = Genre.find_by_sql(query)
		@genre = genre[0]
		query = "SELECT * FROM albums WHERE artist_id=#{@artist.id}"
		@albums = Album.find_by_sql(query)
	end
end