class AddListingDateToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :listing_date, :date
  end
end
