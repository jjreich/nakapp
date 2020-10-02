class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.integer :type
      t.string :fullTextSearch
      t.string :flightNumber
      t.integer :PIC
      t.integer :SIC
      t.string :airfield
      t.boolean :revenue
      t.string :memberName
      t.date :dateStart
      t.date :dateEnd
      t.integer :prepMin
      t.integer :prepMax
      t.integer :caterMin
      t.integer :caterMax
      t.integer :depMin
      t.integer :depMax
      t.integer :flightMin
      t.integer :flightMax
      t.integer :arrMin
      t.integer :arrMax
      t.integer :maintMin
      t.integer :maintMax
      t.boolean :catering
      t.boolean :maint
      t.integer :createdBy
      t.boolean :hasComments

      t.timestamps
    end
  end
end
