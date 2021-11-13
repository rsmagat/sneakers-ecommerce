class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_path
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
