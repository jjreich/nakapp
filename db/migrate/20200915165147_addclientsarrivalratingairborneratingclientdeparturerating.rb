class Addclientsarrivalratingairborneratingclientdeparturerating < ActiveRecord::Migration[5.1]
  def change
  	add_column :debriefs, :client_arrival_rating, :integer
   	add_column :debriefs, :airborne_rating, :integer
  	add_column :debriefs, :client_departure_rating, :integer
  end
end
