class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :shop
      t.belongs_to :publisher
      t.timestamps
    end
  end
end
