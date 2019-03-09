class RenameItemColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :sold_price_cents, :float
    change_column :items, :cost_cents, :float
    rename_column :items, :sold_price_cents, :sold_price
    rename_column :items, :cost_cents, :cost
    rename_column :items, :listing_price_cents, :listing_price

  end
end
