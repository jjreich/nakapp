class CreateDebriefs < ActiveRecord::Migration[5.1]
  def change
    create_table :debriefs do |t|
      t.string :flightNumber
      t.integer :preparationRating
      t.text :preparationComments
      t.boolean :cateringStatus
      t.integer :cateringRating
      t.text :cateringComments
      t.integer :clientArrivalTiming
      t.string :clientArrivalType
      t.text :clientArrivalComments
      t.string :flightTurbulence
      t.string :airborneFlightDelays
      t.string :airborneFlightCheckins
      t.text :flightComments
      t.string :clientDepartureType
      t.text :clientDepartureComments
      t.text :overallComments

      t.timestamps
    end
  end
end
