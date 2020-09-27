class Flight < ApplicationRecord
	has_one :debrief

	paginates_per 12
end
