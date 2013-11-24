class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.belongs_to :market
      t.belongs_to :item
      t.boolean :buysell
      t.float :price
      t.string :unit
      t.float :quantity
      t.date :orderexpire
      t.date :delivery

      t.timestamps
    end
  end
end
