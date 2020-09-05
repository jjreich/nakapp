class CreateFbos < ActiveRecord::Migration[5.1]
  def change
    create_table :fbos do |t|
      t.string :fboName

      t.timestamps
    end
  end
end
