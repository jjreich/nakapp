class CreateAirborneflightdelays < ActiveRecord::Migration[5.1]
  def change
    create_table :airborneflightdelays do |t|
      t.string :airborneFlightDelays

      t.timestamps
    end
  end
end
