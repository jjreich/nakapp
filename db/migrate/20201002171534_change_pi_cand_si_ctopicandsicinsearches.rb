class ChangePiCandSiCtopicandsicinsearches < ActiveRecord::Migration[5.1]
  def change
  	rename_column :searches, :PIC, :pic
  	rename_column :searches, :SIC, :sic
  end
end
