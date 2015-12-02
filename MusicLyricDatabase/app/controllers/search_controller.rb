class SearchController < ApplicationController
	def index
		if(params[:search])
			search = params[:search]
			query = "SELECT * FROM songs WHERE title LIKE '%"+search+"%'"
			@songs = Song.find_by_sql(query)
			query = "SELECT * FROM artists WHERE name LIKE '%"+search+"%'"
			@artists = Artist.find_by_sql(query)
			query = "SELECT * FROM albums WHERE title LIKE '%"+search+"%'"
			@albums = Album.find_by_sql(query)
			query = "SELECT * FROM genres WHERE name LIKE '%"+search+"%'"
			@genres = Genre.find_by_sql(query)
			query = "SELECT * FROM regions WHERE name LIKE '%"+search+"%'"
			@regions = Region.find_by_sql(query)
		end
	end
end
