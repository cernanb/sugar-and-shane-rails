class BrandsController < ApplicationController
  def index
    @brands = Brand.all
    render json: @brands 
  end

  def new
  end

  def create
  end
end
