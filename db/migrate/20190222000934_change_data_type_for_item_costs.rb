class ChangeDataTypeForItemCosts < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :listing_price_cents, :float
  end
end
