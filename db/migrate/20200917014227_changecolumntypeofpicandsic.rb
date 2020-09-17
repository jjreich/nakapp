class Changecolumntypeofpicandsic < ActiveRecord::Migration[5.1]
  def change
  	change_column :flights, :pic, :string
  	change_column :flights, :sic, :string
  end
end
