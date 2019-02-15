class StoresController < ApplicationController
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

  private

    def store_params
      params.require(:store).permit(:name)
    end
end
