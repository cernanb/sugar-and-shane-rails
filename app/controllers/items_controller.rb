class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @brand = @item.build_brand
    @store = @item.build_store
  end

  def update
    @item = Item.find_by(id: params[:id])
    if @item.update(item_params)
      redirect_to items_path
    else
      redirect_to items_path
    end
  end

  def create
    @item = Item.new(item_params)
    binding.pry
    if @item.save
      redirect_to items_path
    else
      redirect_to new_item_path
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, :cost_cents, :listing_price_cents, :brand_id, :store_id, :sold_price_cents, :brand_attributes => [:name], :store_attributes => [:name])
    end
end
