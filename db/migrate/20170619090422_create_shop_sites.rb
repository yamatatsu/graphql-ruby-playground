class CreateShopSites < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_sites do |t|
      t.string :url
      t.references :shop

      t.timestamps
    end
  end
end
