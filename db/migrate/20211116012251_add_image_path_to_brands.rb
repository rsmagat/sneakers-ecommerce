class AddImagePathToBrands < ActiveRecord::Migration[6.1]
  def change
    add_column :brands, :image_path, :string
  end
end
