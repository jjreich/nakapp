class CreateArrivaltypes < ActiveRecord::Migration[5.1]
  def change
    create_table :arrivaltypes do |t|
      t.string :arrivalTypes

      t.timestamps
    end
  end
end
