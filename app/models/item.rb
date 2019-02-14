class Item < ApplicationRecord
    monetize :cost_cents
    monetize :listing_price_cents
    monetize :sold_price_cents, allow_nil: true

    belongs_to :store
    belongs_to :brand
end
