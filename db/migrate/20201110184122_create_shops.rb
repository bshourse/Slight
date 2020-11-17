class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :books_sold_count
      t.belongs_to :publisher
      t.timestamps
    end
  end
end
