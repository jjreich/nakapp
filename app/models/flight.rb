class Flight < ApplicationRecord
	has_one :debrief

	paginates_per 10
end
