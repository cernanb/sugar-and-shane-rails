class Item < ApplicationRecord
    monetize :cost_cents
    monetize :listing_price_cents
    monetize :sold_price_cents
end
