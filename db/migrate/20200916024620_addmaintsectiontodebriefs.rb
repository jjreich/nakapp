class Addmaintsectiontodebriefs < ActiveRecord::Migration[5.1]
  def change
  	add_column :debriefs, :maintenance_rating, :integer
   	add_column :debriefs, :maintenance_check, :boolean
  	add_column :debriefs, :maintenance_comments, :text
  end
end
