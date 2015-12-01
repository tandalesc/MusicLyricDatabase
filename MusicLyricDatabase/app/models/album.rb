class Album < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :year
	belongs_to :artist
	has_many :songs
end
