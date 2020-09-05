class AddAirfieldIDtoFbo < ActiveRecord::Migration[5.1]
  def change
  	add_column :fbos, :airfield_id, :integer
  	add_index :fbos, :airfield_id
  end
end
