class AddsaveSearchandoverallratingstosearch < ActiveRecord::Migration[5.1]
  def change
  	add_column :searches, :save_search, :boolean
  	add_column :searches, :save_search_name, :string
  	add_column :searches, :overallmin, :integer
  	add_column :searches, :overallmax, :integer
  end
end
