require 'elasticsearch/model'

class Debrief < ApplicationRecord

	belongs_to :user
	belongs_to :flight
	has_many :comments
  	has_many :viewed_debriefs

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

  	paginates_per 10
  

	def overall_rating

	  ratingsum = 0
	  ratingcount = 0

	  if preparation_rating.present?
	  	ratingsum = ratingsum + preparation_rating
	  	ratingcount = ratingcount + 1
	  end 

	  if catering_rating.present?
	  	ratingsum = ratingsum + catering_rating
	  	ratingcount = ratingcount + 1
	  end

	  if client_arrival_rating.present?
	  	ratingsum = ratingsum + client_arrival_rating
	  	ratingcount = ratingcount + 1
	  end

	  if airborne_rating.present?
	  	ratingsum = ratingsum + airborne_rating
	  	ratingcount = ratingcount + 1
	  end

	  if client_departure_rating.present?
	  	ratingsum = ratingsum + client_departure_rating
	  	ratingcount = ratingcount + 1
	  end

	  if maintenance_rating.present?
	  	ratingsum = ratingsum + maintenance_rating
	  	ratingcount = ratingcount + 1
	  end

	  ratingsum = ratingsum.to_f
	  if ratingcount == 0
	  	overall_rating == 0.0
	  else
	  	overall_rating = (ratingsum / ratingcount)
	  end

	end

	def star_rating_value

		star_rating_value = overall_rating.divmod 1

	end	

	def star_rating_remainder

		star_rating_remainder = overall_rating.modulo(1)

	end	

end
