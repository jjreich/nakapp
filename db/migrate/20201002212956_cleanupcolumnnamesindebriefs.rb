class Cleanupcolumnnamesindebriefs < ActiveRecord::Migration[5.1]
  def change
  	rename_column :debriefs, :preparationRating, :preparation_rating
  	rename_column :debriefs, :cateringRating, :catering_rating
  end
end
