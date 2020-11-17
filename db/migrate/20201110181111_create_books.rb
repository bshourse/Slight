class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :publisher
      t.integer :copies_in_stock
    end
  end
end
