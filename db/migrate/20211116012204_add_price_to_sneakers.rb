class AddPriceToSneakers < ActiveRecord::Migration[6.1]
  def change
    add_column :sneakers, :price, :integer
  end
end
