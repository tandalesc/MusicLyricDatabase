class Producer < ActiveRecord::Base
	validates_presence_of :name
	belongs_to :genre
	belongs_to :region
end
