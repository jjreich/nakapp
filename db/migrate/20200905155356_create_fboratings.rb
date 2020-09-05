class CreateFboratings < ActiveRecord::Migration[5.1]
  def change
    create_table :fboratings do |t|
      t.string :ratingType
      t.int :fboStarRating
      t.text :fboComments

      t.timestamps
    end
  end
end
