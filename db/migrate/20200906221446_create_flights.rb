class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :flightNumber
      t.string :departureAirfield
      t.string :arrivalAirfield
      t.string :client

      t.timestamps
    end
  end
end
