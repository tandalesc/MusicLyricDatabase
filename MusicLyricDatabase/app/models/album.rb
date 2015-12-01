class Album < ActiveRecord::Base
	attr_accessible :title, :year, :artist

	validates_presence_of :title
	validates_presence_of :year
	belongs_to :artist
	has_many :songs

	def self.search(query):
    	# where(:title, query) -> This would return an exact match of the query
    	where("(title like (?)) OR (year like (?)) OR (artist like (?))", "%#{query}%")
  	end
end
