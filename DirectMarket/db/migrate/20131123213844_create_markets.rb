class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :day
      t.time :starttime
      t.time :endtime

      t.timestamps
    end
  end
end
