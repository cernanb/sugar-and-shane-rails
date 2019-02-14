class Item < ApplicationRecord
    monetize :cost_cents
    monetize :listing_price_cents
    monetize :sold_price_cents, allow_nil: true

    belongs_to :store, optional: true
    belongs_to :brand, optional: true

    def brand_attributes=brand_hash
        if !brand_hash[:name].empty?
            brand = Brand.find_or_create_by(name: brand_hash[:name])
            self.brand = brand
        end
    end

    def store_attributes=store_hash
        if !store_hash[:name].empty?
            store = Store.find_or_create_by(name: store_hash[:name])
            self.store = store
        end
    end
end
