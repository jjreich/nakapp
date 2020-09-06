class CreateFlightTurbulences < ActiveRecord::Migration[5.1]
  def change
    create_table :flight_turbulences do |t|
      t.string :turbulenceType

      t.timestamps
    end
  end
end
