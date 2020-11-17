class CreateSellings < ActiveRecord::Migration[6.0]
  def change
    create_table :sellings do |t|
      t.belongs_to :book
      t.belongs_to :shop
      t.belongs_to :publisher
      t.timestamps
    end
  end
end
