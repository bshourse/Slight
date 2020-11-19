class AddColumnCopiesToSellings < ActiveRecord::Migration[6.0]
  def change
    add_column :sellings, :copies, :integer
  end
end
