class Comment < ApplicationRecord
	has_ancestry

	belongs_to :comment
	belongs_to :user
end
