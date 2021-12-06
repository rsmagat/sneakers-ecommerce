class DropSneakerOrders < ActiveRecord::Migration[6.1]
  def change
    drop_table :Sneaker_Orders
  end
end
