class AddFboIdtoFboRatings < ActiveRecord::Migration[5.1]
  def change
  	add_column :fboratings, :fbo_id, :integer
  	add_index :fboratings, :fbo_id
  end
end
