class CreateWebsiteInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :website_informations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
