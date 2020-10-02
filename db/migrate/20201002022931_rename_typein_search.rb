class RenameTypeinSearch < ActiveRecord::Migration[5.1]
  def change
  	rename_column :searches, :type, :searchType
  end
end
