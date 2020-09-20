class FinishDebriefLater < ActiveRecord::Migration[5.1]
  def change
  	add_column :debriefs, :finish_later, :boolean
  end
end
