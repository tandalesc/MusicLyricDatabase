class Region < ActiveRecord::Base
	#attr_accessible :name

	validates_presence_of :name

	def self.search(query)
		where("name like (?)", "%#{query}%")
	end
end