class RemoveCopiesInStockFromBooks < ActiveRecord::Migration[6.0]

  def up
    remove_column :books, :copies_in_stock
  end

end
