class ItemSerializer < ActiveModel::Serializer
  attributes :id, :cost, :listing_price, :sold_price, :name
  belongs_to :store
  belongs_to :brand
end
