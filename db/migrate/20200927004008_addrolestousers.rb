class Addrolestousers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :pilot_role, :boolean
  	add_column :users, :ops_role, :boolean
  	add_column :users, :maint_role, :boolean
  	add_column :users, :team_blue_role, :boolean
  	add_column :users, :flight_support_role, :boolean
  	add_column :users, :admin_role, :boolean
  end
end
