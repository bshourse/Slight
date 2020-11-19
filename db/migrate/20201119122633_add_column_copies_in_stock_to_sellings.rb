class AddColumnCopiesInStockToSellings < ActiveRecord::Migration[6.0]
  def change
    add_column :sellings, :copies_in_stock, :integer
  end
end
