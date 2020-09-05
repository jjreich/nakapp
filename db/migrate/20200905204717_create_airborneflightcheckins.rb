class CreateAirborneflightcheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :airborneflightcheckins do |t|
      t.string :airborneflightcheckins

      t.timestamps
    end
  end
end
