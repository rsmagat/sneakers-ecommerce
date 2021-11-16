class RemovePriceFromSneakers < ActiveRecord::Migration[6.1]
  def change
    remove_column :sneakers, :price, :decimal
  end
end
