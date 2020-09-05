class CreateAircrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :aircrafts do |t|
      t.string :tailNumber
      t.string :type

      t.timestamps
    end
  end
end
