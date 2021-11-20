class CreateProvinces < ActiveRecord::Migration[6.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :provincial
      t.decimal :goods_and_services
      t.decimal :harmonized

      t.timestamps
    end
  end
end
