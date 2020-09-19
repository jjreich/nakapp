class Addaircrafttoflight < ActiveRecord::Migration[5.1]
  def change
  	add_column :flights, :aircraft, :string
  end
end
