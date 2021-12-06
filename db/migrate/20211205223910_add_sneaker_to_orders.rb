class AddSneakerToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :sneaker, null: false, foreign_key: true
  end
end
