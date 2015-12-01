class Artist < ActiveRecord::Base
	validates_presence_of :name
	has_many :songs
	has_many :albums
	belongs_to :genre
	belongs_to :region
end
