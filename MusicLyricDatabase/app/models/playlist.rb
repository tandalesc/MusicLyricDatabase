class Playlist < ActiveRecord::Base
	validates_presence_of :name
	belongs_to :user
	has_many :songs
end
