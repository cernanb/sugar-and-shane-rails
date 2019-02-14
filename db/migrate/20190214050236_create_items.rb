class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :cost_cents
      t.integer :listing_price_cents
      t.integer :sold_price_cents
      t.string :name

      t.timestamps
    end
  end
end
