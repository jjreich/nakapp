class Adduseridtodebriefs < ActiveRecord::Migration[5.1]
  def change
  	add_column :debriefs, :user_id, :integer
  	add_index :debriefs, :user_id
  end
end
