class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.decimal :GST
      t.decimal :PST
      t.decimal :HST
      t.decimal :total
      t.text :address
      t.string :status
      t.references :customer

      t.timestamps
    end
  end
end
