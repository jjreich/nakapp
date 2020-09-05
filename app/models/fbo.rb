class Fbo < ApplicationRecord
	belongs_to :airfield

	has_many :fboratings
end
