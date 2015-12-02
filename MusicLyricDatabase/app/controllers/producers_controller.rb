class ProducersController < ApplicationController
	def show
		query = "SELECT * FROM producers WHERE id="+params[:id]
		producer = Producer.find_by_sql(query)
		@producer = producer[0]
		query = "SELECT * FROM regions WHERE id=#{@producer.region_id}"
		region = Region.find_by_sql(query)
		@region = region[0]
		query = "SELECT * FROM genres WHERE id=#{@producer.genre_id}"
		genre = Genre.find_by_sql(query)
		@genre = genre[0]
		query = "SELECT * FROM songs INNER JOIN producers_songs ON songs.id = producers_songs.song_id WHERE producers_songs.producer_id=#{@producer.id}"
		@songs = Song.find_by_sql(query)
	end
end