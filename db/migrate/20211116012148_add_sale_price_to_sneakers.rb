class AddSalePriceToSneakers < ActiveRecord::Migration[6.1]
  def change
    add_column :sneakers, :sale_price, :integer
  end
end
