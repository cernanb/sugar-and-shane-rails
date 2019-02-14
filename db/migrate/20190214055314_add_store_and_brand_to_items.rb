class AddStoreAndBrandToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :store_id, :integer
    add_column :items, :brand_id, :integer
  end
end
