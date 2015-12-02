class GenresController < ApplicationController
	def show
		query = "SELECT * FROM genres WHERE id="+params[:id]
		genre = Genre.find_by_sql(query)
		@genre = genre[0]
		query = "SELECT * FROM artists WHERE genre_id=#{@genre.id}"
		@artists = Artist.find_by_sql(query)
	end
end