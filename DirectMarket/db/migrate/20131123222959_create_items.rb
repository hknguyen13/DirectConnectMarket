class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.string :description, limit: 256
      t.string :picture

      t.timestamps
    end
  end
end
