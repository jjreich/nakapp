class Adduserandcommentidtoviewedcomments < ActiveRecord::Migration[5.1]
  def change
  	add_column :viewed_comments, :user_id, :integer
  	add_index :viewed_comments, :user_id
  	add_column :viewed_comments, :comment_id, :integer
  	add_index :viewed_comments, :comment_id
  end
end
