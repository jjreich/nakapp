class CreateDeparturetypes < ActiveRecord::Migration[5.1]
  def change
    create_table :departuretypes do |t|
      t.string :departureTypes

      t.timestamps
    end
  end
end
