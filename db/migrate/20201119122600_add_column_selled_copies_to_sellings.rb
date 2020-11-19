class AddColumnSelledCopiesToSellings < ActiveRecord::Migration[6.0]
  def change
    add_column :sellings, :selled_copies, :integer
  end
end
