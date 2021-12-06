class RemoveSneakerFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_reference :orders, :sneaker, null: false, foreign_key: true
  end
end
