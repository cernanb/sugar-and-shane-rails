class StoresController < ApplicationController
  def index
    @stores = Store.all
    render json: @stores
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to stores_path
    else
      redirect_to new_store_path
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  private

    def store_params
      params.require(:store).permit(:name)
    end
end
