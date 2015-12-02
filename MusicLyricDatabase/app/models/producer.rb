class Producer < ActiveRecord::Base
	#attr_accessible :name, :genre, :region

	validates_presence_of :name
	belongs_to :genre
	belongs_to :region

	def self.search(query)
		where("(name like (?)) OR (genre like (?)) OR (region like (?))", "%#{query}%")
	end
end
