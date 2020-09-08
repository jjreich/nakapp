class Adduseridanddebriefidtocomments < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :user_id, :integer
  	add_index :comments, :user_id
  	add_column :comments, :debrief_id, :integer
  	add_index :comments, :debrief_id
  end
end
