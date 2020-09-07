class Addflightidtodebrief < ActiveRecord::Migration[5.1]
  def change
  	add_column :debriefs, :flight_id, :integer
  	add_index :debriefs, :flight_id
  end
end
