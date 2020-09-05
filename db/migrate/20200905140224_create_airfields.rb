class CreateAirfields < ActiveRecord::Migration[5.1]
  def change
    create_table :airfields do |t|
      t.string :icao

      t.timestamps
    end
  end
end
