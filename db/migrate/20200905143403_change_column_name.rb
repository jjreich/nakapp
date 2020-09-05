class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :aircrafts, :type, :aircraftType
  end
end
