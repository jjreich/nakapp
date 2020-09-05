class CreateFboratings < ActiveRecord::Migration[5.1]
  def change
    create_table :fboratings do |t|
      t.string :ratingType
      t.integer :fboStarRating
      t.text :fboComments

      t.timestamps
    end
  end
end
