class AddPiCandSiCtoFlight < ActiveRecord::Migration[5.1]
  def change
  	add_column :flights, :pic, :integer
  	add_column :flights, :sic, :integer
  end
end
