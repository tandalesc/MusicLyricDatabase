class Genre < ActiveRecord::Base
	#attr_accessible :name

	validates_presence_of :name
	has_many :artists

	def self.search(query)
		where("name like (?)", "%#{query}%")
	end
end
