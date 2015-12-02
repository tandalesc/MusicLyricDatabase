class RegionsController < ApplicationController
	def show
		query = "SELECT * FROM regions WHERE id="+params[:id]
		region = Region.find_by_sql(query)
		@region = region[0]
		query = "SELECT * FROM artists WHERE region_id=#{@region.id}"
		@artists = Artist.find_by_sql(query)
		query = "SELECT * FROM producers WHERE region_id=#{@region.id}"
		@producers = Producer.find_by_sql(query)
	end
end