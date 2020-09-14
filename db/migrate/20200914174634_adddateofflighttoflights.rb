class Adddateofflighttoflights < ActiveRecord::Migration[5.1]
  def change
  	add_column :flights, :dateOfFlight, :date
  end
end
