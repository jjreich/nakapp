class Search < ApplicationRecord

	def debriefs
		@debriefs ||= find_debriefs
	end

	private

	def find_debriefs
		debriefs = Debrief.where(finish_later: nil).includes(:flight)
		debriefs = debriefs.search(fullTextSearch).records.page if fullTextSearch.present?
		debriefs = debriefs.where(flights: {flightNumber: flightNumber}).references(:flights) if flightNumber.present?
		debriefs = debriefs.where(flights: {pic: pic}).references(:flights) if pic.present?
		debriefs = debriefs.where(flights: {sic: sic}).references(:flights) if sic.present?
		debriefs = debriefs.where(flights: {departureAirfield: airfield}).or(debriefs.where(flights: {arrivalAirfield: airfield})).references(:flights) if airfield.present?
		debriefs = debriefs.where(flights: {revenue_test: true}).references(:flights) if revenue.present?
		debriefs = debriefs.where(user_id: createdBy) if createdBy.present?
		debriefs
	end
end
