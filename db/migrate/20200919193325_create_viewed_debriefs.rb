class CreateViewedDebriefs < ActiveRecord::Migration[5.1]
  def change
    create_table :viewed_debriefs do |t|

      t.timestamps
    end
  end
end
