class Addrevenuetesttoflights < ActiveRecord::Migration[5.1]
  def change
  	add_column :flights, :revenue_test, :boolean
  end
end
