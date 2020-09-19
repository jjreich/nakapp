class Adduseranddebriefidstovieweddebriefs < ActiveRecord::Migration[5.1]
  def change
  	add_column :viewed_debriefs, :user_id, :integer
  	add_index :viewed_debriefs, :user_id
  	add_column :viewed_debriefs, :debrief_id, :integer
  	add_index :viewed_debriefs, :debrief_id
  end
end
