class Song < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :duration
	validates_presence_of :lyrics
	belongs_to :album
	belongs_to :producer
	has_and_belongs_to_many :playlists
end
