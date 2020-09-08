class Debrief < ApplicationRecord
	belongs_to :user
	belongs_to :flight
	has_many :comments
end
