class Search < ApplicationRecord

	def debriefs
		@debriefs ||= find_debriefs
	end

	def flights
		@flights ||= find_flights
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
		debriefs = debriefs.where("preparation_rating >= ?", prepMin) if prepMin.present?
		debriefs = debriefs.where("preparation_rating <= ?", prepMax) if prepMax.present?
		debriefs = debriefs.where(cateringStatus: true) if catering == true
		debriefs = debriefs.where("catering_rating >= ?", caterMin) if caterMin.present?
		debriefs = debriefs.where("catering_rating <= ?", caterMax) if caterMax.present?
		debriefs = debriefs.where("client_arrival_rating >= ?", arrMin) if arrMin.present?
		debriefs = debriefs.where("client_arrival_rating <= ?", arrMax) if arrMax.present?
		debriefs = debriefs.where("airborne_rating >= ?", flightMin) if flightMin.present?
		debriefs = debriefs.where("airborne_rating <= ?", flightMax) if flightMax.present?
		debriefs = debriefs.where("client_departure_rating >= ?", depMin) if depMin.present?
		debriefs = debriefs.where("client_departure_rating <= ?", depMax) if depMax.present?
		debriefs = debriefs.where(maintenance_check: true) if maint == true
		debriefs = debriefs.where("maintenance_rating >= ?", maintMin) if maintMin.present?
		debriefs = debriefs.where("maintenance_rating <= ?", maintMax) if maintMax.present?
		debriefs = debriefs.where(user_id: createdBy) if createdBy.present?
		debriefs
	end

	def find_flights
		flights = Flight.all
		flights = flights.where(flightNumber: flightNumber) if flightNumber.present?
		flights = flights.where(pic: pic) if pic.present?
		flights = flights.where(sic: sic) if sic.present?
		flights = flights.where(departureAirfield: airfield).or(flights.where(arrivalAirfield: airfield)) if airfield.present?
		flights = flights.where(revenue_test: true) if revenue.present?
		flights
	end
end
