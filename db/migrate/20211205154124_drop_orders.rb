class DropOrders < ActiveRecord::Migration[6.1]
  def change
    drop_table :Orders
  end
end
