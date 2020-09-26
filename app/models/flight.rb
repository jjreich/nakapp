class Flight < ApplicationRecord
	has_one :debrief

	paginates_per 7
end
