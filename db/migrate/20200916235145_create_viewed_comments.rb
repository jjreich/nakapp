class CreateViewedComments < ActiveRecord::Migration[5.1]
  def change
    create_table :viewed_comments do |t|

      t.timestamps
    end
  end
end
